
Class SinArmCannon : SinWeapon{
	int beamChargeRate;
	int beamCharged;
	int ballisticPower; property BallisticPower : ballisticPower;
	int missileRegenRate;
	int superMissileRegenRate;
	bool charge; property Charge : charge;
	bool spazer; property Spazer : spazer;
	bool ice; property Ice : ice;
	bool wave; property Wave : wave;
	bool plasma; property Plasma : plasma;
	bool hyper; property Hyper : hyper;
	int heatLevel; property HeatLevel : heatLevel;
	int missileAmount; property MissileAmount : missileAmount;
	int missileMaxAmount; property MaxMissiles : missileMaxAmount;
	int superMissileAmount; property SuperMissileAmount : superMissileAmount;
	int superMissileMaxAmount; property MaxSuperMissiles : superMissileMaxAmount;
	Default{
		Inventory.Icon "ARMCZ0";
		Scale 1.5;
		Inventory.Amount 0;
		Inventory.MaxAmount 999;
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.AttackType ATTACK_PROJECTILE;
		SinWeapon.FireMode1 1,5;
		SinWeapon.FireMode2 1,10;
		SinWeapon.FireMode3 1,20;
		SinItem.BigItem 0;
		SinWeapon.SwitchSound "supermetroid/switch";
		SinWeapon.DrySound "supermetroid/switch";
	}
	States{Spawn: ARMC Z -1; Stop;}
	//	Change sprite when changing to Missiles.
	//	Need to fix it.
	/*
	Override void HandleSprite(int status){
		string ico = "Z";
		If(firemode != 0){ico=ico.."Y";}
		Else{ico=ico.."Z";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite; frame=curframe;
	}
	*/
	Override void ChangeMode(SinPlayer shooter){
		Super.ChangeMode(shooter);
		SwitchAmmo();
		If(firemode==0){firetype=0;shooter.A_Print("Beam",0.5);HandleSprite();}
		If(firemode==1){firetype=1;shooter.A_Print("Missile",0.5);HandleSprite();}
		If(firemode==2){firetype=1;shooter.A_Print("Super Missile",0.5);HandleSprite();}
		HandleSprite();
	}
	//	Need to get this working.
	/*
	Override void ReloadGun(SinInvManager invman, int index, bool active){
		Super.ReloadGun(invman,index,active);
		Amount++;
	}
	*/
	//	intensity, duration, damage radius, tremor radius, sound.
	void ShakeWeak(SinPlayer shooter, SinHands gun){shooter.A_Quake(1,3,0,50);}
	void ShakeModerate(SinPlayer shooter, SinHands gun){shooter.A_Quake(2,3,0,50);}
	void ShakeStrong(SinPlayer shooter, SinHands gun){shooter.A_Quake(3,3,0,50);}
	//	This function exists to check for the current Missile/Super Missile count.
	Virtual void SwitchAmmo(){
		//A_Log("\cAHeat"); A_LogInt(heatLevel);
		A_Log("\cAMissiles"); A_LogInt(missileAmount);
		A_Log("\cDSuper Missiles"); A_LogInt(superMissileAmount);
		If(firemode==1){Amount=missileAmount;}
		If(firemode==2){Amount=superMissileAmount;}
	}
	//	This exists much like the above, except it ensures ammo consumption.
	Virtual void FireAmmo(){
		If(firemode==1){missileAmount--;}
		If(firemode==2){superMissileAmount--;}
	}
	//	Exactly the same as `SwitchAmmo()`, except this runs every frame for Heat.
	Virtual void CheckHeat(){
		If(firemode==0){Amount=heatLevel;}
	}
	//	This is also similar to `FireAmmo()`, though it's used for managing Heat instead.
	Virtual void HeatUp(){
		If(firemode==0){
			//	45 total heat when all are combined in a single shot.
			heatLevel+=5;
			If(spazer){heatLevel+=5;}
			If(ice){heatLevel+=5;}
			If(wave){heatLevel+=5;}
			If(plasma){heatLevel+=5;}
		}
	}
	Override bool WeaponPreFire(SinPlayer shooter, SinHands gun){
		If(firemode==0){
			//	This is to ensure that, whenever the heat is over the max, the cannon will fail to fire.
			If(heatLevel>=100){Return false;}
			Else{If(cvar.GetCVar('sinscifi_metroid_heat').getbool()){HeatUp();}}
			AttackSound="supermetroid/beamshot1";
			ammocost=0;noise=1000;spreadx=1;spready=1;multishot=1;
			proj="PowerBeam";
			If(ice){
				proj="IceBeam";
				AttackSound="supermetroid/icebeamshot1";
			}
			If(wave){
				proj="WaveBeam";
				AttackSound="supermetroid/wavebeamshot";
			}
			If(plasma){
				proj="PlasmaBeam";
				AttackSound="supermetroid/plasmabeamshot";
			}
			If(spazer&&!hyper){
				spreadx=2;spready=2;multishot=3;
				AttackSound="supermetroid/spazershot";
			}
			If(ice&&wave){
				proj="IceWaveBeam";
				AttackSound="supermetroid/icebeamshot1";
			}
			If(wave&&plasma){
				proj="PlasmaWaveBeam";
				AttackSound="supermetroid/plasmabeamshot";
			}
			If(ice&&plasma){
				proj="PlasmaIceBeam";
				AttackSound="supermetroid/icebeamshot2";
			}
			If(spazer&&ice){
				proj="IceBeam";
				AttackSound="supermetroid/icebeamshot2";
			}
			If(spazer&&wave){
				proj="WaveBeam";
				AttackSound="supermetroid/spazershot";
			}
			If(spazer&&ice&&wave){
				proj="IceWaveBeam";
				AttackSound="supermetroid/icebeamshot2";
			}
			If(spazer&&ice&&wave&&plasma){
				proj="PlasmaIceWaveBeam";
				AttackSound="supermetroid/icebeamshot2";
			}
			If(hyper){
				proj="HyperBeam";
				AttackSound="supermetroid/hyperbeamshot1";
			}
		}
		//
		//	List of explosives:
		//
		//	revenantseekermissiles	20
		//	revenantseekermissiles2 50
		//	revenantseekermissiles3 50
		//	JuggernautRocket 110
		//	MortarBombs 120
		//	WeakRocket 200
		//	Rocket2 300
		//	EnemyTankShell 300
		//	TankMissile2 300
		//	MechMortar	310
		//	AssaultHelicopterRocket 400
		//	MechRocket 500
		//	TankMissile 1000
		//	TankShell 2000
		//
		//	Missile LVL1: revenantseekermissiles3 50
		//	Super Missile LVL1: Rocket2 300
		//	Missile LVL2: Rocket2 WeakRocket 200
		//	Super Missile LVL1: Rocket2 AssaultHelicopterRocket 400
		//
		If(firemode==1){
			proj="Missile";
			If(ballisticPower==2){
				proj="Missile";
			}
			AttackSound="supermetroid/missileshot";
			ammocost=1;
			multishot=1;
		}
		If(firemode==2){
			proj="SuperMissile";
			If(ballisticPower==2){
				proj="SuperMissile";
			}
			AttackSound="supermetroid/supermissileshot";
			ammocost=1;
			multishot=1;
		}
		Return Super.WeaponPreFire(shooter,gun);
	}
	Override void WeaponFire(SinPlayer shooter, SinHands gun){
		/*
		If(firemode==0){
			If(spazer){ShakeModerate(shooter,gun);}
			Else{ShakeWeak(shooter,gun);}
		}
		*/
		FireAmmo();
		If(firemode==0){ShakeWeak(shooter,gun);}
		If(firemode==1){ShakeModerate(shooter,gun);}
		If(firemode==2){ShakeStrong(shooter,gun);}
	}
	Override void DoEffect(){
		beamChargeRate--;
		/*
		If(beamChargeRate <= 0 && missileAmount<missileMaxAmount){
			beamCharged=1;
			If(cvar.GetCVar('sinscifi_debug').getbool()){owner.A_Print("BEAM CHARGED",0.25);}
		}
		*/
		//	Heat
		CheckHeat();
		If(heatLevel>0){heatLevel--;}
		//	Missile Regen
		missileRegenRate--;
		superMissileRegenRate--;
		If(missileRegenRate <= 0 && missileAmount<missileMaxAmount){
			missileAmount++;
			SwitchAmmo();
			missileRegenRate = sinscifi_missile_regenrate;
			owner.A_StartSound("supermetroid/pickupammo",CHAN_AUTO,CHANF_OVERLAP);
			If(cvar.GetCVar('sinscifi_debug').getbool()){owner.A_Print("BUILT MISSILE",0.25);}
		}
		If(superMissileRegenRate <= 0 && superMissileAmount<superMissileMaxAmount){
			superMissileAmount++;
			SwitchAmmo();
			superMissileRegenRate = sinscifi_supermissile_regenrate;
			owner.A_StartSound("supermetroid/pickupammolow",CHAN_AUTO,CHANF_OVERLAP);
			If(cvar.GetCVar('sinscifi_debug').getbool()){owner.A_Print("BUILT SUPER MISSILE",0.25);}
		}
		//	Old.
		/*
		int buttons = GetPlayerInput(-1, INPUT_BUTTONS);
		int altFireCooldown;
		altFireCooldown--;
		If(altFireCooldown < 0){
			If(owner.player.cmd.buttons & BT_ALTATTACK){
				altFireCooldown = 35;
				Amount++;
				//owner.GiveInventory("Health",50);
				owner.A_Print("Regenerating resources...",0.5);
				owner.A_StartSound("supermetroid/beamshot3",CHAN_AUTO,CHANF_OVERLAP);
				//	Failed attempts at shooting projectiles.
				//A_SpawnItemEx("Rocket",0,0,0,0,0,0,0);
				//owner.SpawnProjectile(0, "DoomImpBall", GetActorAngle(0) >> 8, 20, 0, 0, 0);
				//owner.A_SpawnProjectile("Plasmaball", 48);
			}
		}
		*/
	}
}
