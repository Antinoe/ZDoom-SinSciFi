
Class SinGravityHammer : SinWeapon{
	//int weaponTimer;
	//const weaponCooldown = 25;
	Default{
		Inventory.Icon "LAUNA0";
		Tag "Gravity Hammer";
		//Inventory.Amount 100;
		//Inventory.MaxAmount 100;
		Inventory.PickupMessage "Picked up a gravity hammer.";
		SinItem.Description "A formidable melee weapon. It emits a shockwave upon impact, capable of sending enemies flying and causing devastating damage in close-quarters combat. Its imposing size and destructive capabilities make it a feared weapon on the battlefield, embodying the brute strength and ferocity of its wielders.";
		SinWeapon.AmmoType "Battery";
		SinWeapon.DefaultMagazine "SinCell";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.AttackType ATTACK_PROJECTILE;
		SinWeapon.Projectile "SinGravityHammerProjectile";
		SinWeapon.Noise 256;
		SinWeapon.Recoil -12;
		SinWeapon.FireMode1 1,25;
		SinItem.BigItem 1;
	}
	States{Spawn: LAUN A -1; Stop;}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
	Override bool WeaponPreFire(SinPlayer shooter, SinHands gun){
		If(Amount>0){shooter.GiveInventory("PowerGravityHammer",1);}
		Return Super.WeaponPreFire(shooter,gun);
	}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		//weaponTimer=25;
		shooter.A_StartSound("halo3/weapons/gravityhammer/hammermelee",CHAN_AUTO,CHANF_OVERLAP);
	}
	/*
	Override void DoEffect(){
		SinPlayer shooter;
		weaponTimer--;
		If(weaponTimer<=0){
			//	Doesn't work yet..
			//	I'll need to just set the duration of the powerup instead of taking it.
			let power = FindInventory("PowerGravityHammer",1);
			If(!power){Return;}
			shooter.TakeInventory("PowerGravityHammer",1);
		}
	}
	*/
}
Class SinGravityHammerProjectile : Actor{
	Default{
		Radius 10;
		Height 10;
		Speed 30;
		Damage 0;
		Projectile;
		DamageFunction(300);
		Damagetype "Explosive";
		SeeSound "";
		DeathSound "";
		Alpha 0.25;
	}
	States{
		Spawn:
			//MISL A 5 Bright;
			#### # 5 Bright;
			Stop;
		Death:
			Goto Death.Hit;
		Death.Hit:
			#### # 0{
				A_Explode((random(150,150)));
				A_StartSound("halo3/weapons/gravityhammer/hammerhit",CHAN_AUTO,CHANF_OVERLAP);
				A_Quake(2,20,0,500);
			}
			MISL BCD 3 Bright;
			Stop;
	}
}
Class PowerGravityHammer : PowerProtection{
	Default{
		Inventory.Icon "MEGAA0";
		+INVENTORY.ADDITIVETIME;
		Powerup.Duration 15;
		//	Couldn't give it an infinite duration just yet, but that's okay.
		//Powerup.Duration 0x7FFFFFFF;
	}
	Override void PostBeginPlay(){}
	Override void InitEffect(){
		If(owner){
			//	These properties make projectiles bounce off of the actor.
			owner.bReflective=true;
			//	This ensures the projectiles always bounce in the direction of the attacker.
			owner.bAimReflect=true;
		}
	}
	Override void DoEffect(){}
	Override void EndEffect(){
		If(owner){
			owner.bReflective=false;
			owner.bAimReflect=false;
		}
	}
	Override void ModifyDamage(int damage, Name damageType, out int newdamage, bool passive, Actor inflictor, Actor source, int flags){
		If(source && passive){newdamage=0;}
		//Return Super.ModifyDamage(damage,damageType,newdamage,passive,inflictor,source,flags);
	}
	/*
	Override void AbsorbDamage(int damage, Name damageType, out int newdamage, Actor inflictor, Actor source, int flags){
		//If(source && inflictor){newdamage=0;}
		//Return Super.AbsorbDamage(damage,damageType,newdamage,inflictor,source,flags);
	}
	*/
}
