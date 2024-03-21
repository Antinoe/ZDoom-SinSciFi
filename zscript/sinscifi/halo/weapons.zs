
Class SinGravityHammer : SinWeapon{
	//int weaponTimer;
	//const weaponCooldown = 25;
	Default{
		Inventory.Icon "LAUNA0";
		Tag "Gravity Hammer";
		//Inventory.Amount 100;
		//Inventory.MaxAmount 100;
		Inventory.PickupMessage "Picked up a gravity hammer.";
		SinItem.Description "This serves as a devastating melee weapon and also allows you to smash the ground for an area of effect. While swinging, projectiles are smacked around to their owners.";
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
			MISL A 5 Bright;
			Stop;
		Death:
			Goto Death.Hit;
		Death.Hit:
			#### # 0{
				A_Explode((random(150,150)));
				A_StartSound("supermetroid/explosion",CHAN_AUTO,CHANF_OVERLAP);
				A_Quake(2,20,0,500);
			}
			MISL BCD 5 Bright;
			Stop;
	}
}
Class PowerGravityHammer : PowerProtection{
	Default{
		Inventory.Icon "MEGAA0";
		Powerup.Duration 15;
		//Powerup.Duration 0x7FFFFFFF;
	}
	Override void PostBeginPlay(){}
	Override void InitEffect(){
		If(owner){
			owner.bReflective=true;
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
		//If(source && passive){newdamage=0;}
		//Return Super.ModifyDamage(damage,damageType,newdamage,passive,inflictor,source,flags);
	}
	Override void AbsorbDamage(int damage, Name damageType, out int newdamage, Actor inflictor, Actor source, int flags){
		If(source && inflictor){newdamage=0;}
		//Return Super.AbsorbDamage(damage,damageType,newdamage,inflictor,source,flags);
	}
}

/*
class Rocket : Actor
{
	Default
	{
		Radius 11;
		Height 8;
		Speed 20;
		Damage 20;
		Projectile;
		+RANDOMIZE
		+DEHEXPLOSION
		+ROCKETTRAIL
		+ZDOOMTRANS
		SeeSound "weapons/rocklf";
		DeathSound "weapons/rocklx";
		Obituary "$OB_MPROCKET";
	}
	States
	{
	Spawn:
		MISL A 1 Bright;
		Loop;
	Death:
		MISL B 8 Bright A_Explode;
		MISL C 6 Bright;
		MISL D 4 Bright;
		Stop;
	BrainExplode:
		MISL BC 10 Bright;
		MISL D 10 A_BrainExplode;
		Stop;
	}
}
*/
