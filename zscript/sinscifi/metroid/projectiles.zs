
const powerDam = 20;
const iceDam = 10;
const waveDam = 30;
const plasmaDam = 130;
const hyperDam = 1000;
Class PowerBeamBase : PlasmaBall{
	Default{
		Projectile;
		+NOGRAVITY;
		+FORCEXYBILLBOARD;
		+HITTRACER;
		RenderStyle "Add";
		Alpha 0.95;
		Decal "DoomImpScorch";
		SeeSound "";
		DeathSound "supermetroid/impact";
		Speed 60;
		Damage 0;
		DamageFunction(powerDam);
		Damagetype "Minigun";
	}
	States{
		Spawn:
			SMX1 A 1 Bright;
			Loop;
		Death:
			SMX1 ABCDE 2 Bright;
			Stop;
	}
}
//
//	Basic Beams
//
Class PowerBeam : PowerBeamBase{Default{}}
Class IceBeam : PowerBeamBase{
	Default{
		DamageFunction(powerDam+iceDam);
		Scale 1.50;
		Damagetype "Ice";
	}
	States{
		Spawn:
			SMX1 A 1 Bright{A_SetTranslation("Ice");}
			Loop;
		Death:
			#### # 1{
				If(tracer && (tracer.bISMONSTER || tracer.player) && !tracer.bBOSS) 
				{
					//tracer.GiveInventory("PowerFrozenWeak",1);
				}
			}
			SMX1 ABCDE 2 Bright;
			Stop;
	}
}
Class WaveBeam : PowerBeamBase{Default{+RIPPER;DamageFunction(powerDam+waveDam);Damagetype "Plasma";}}
Class PlasmaBeam : PowerBeamBase{Default{+RIPPER;DamageFunction(powerDam+plasmaDam);Damagetype "Plasma";}}
//
//	Mixed Beams
//
Class IceWaveBeam : IceBeam{Default{+RIPPER;DamageFunction(powerDam+iceDam+waveDam);}}
Class PlasmaWaveBeam : PlasmaBeam{Default{DamageFunction(powerDam+plasmaDam+waveDam);}}
Class PlasmaIceBeam : IceBeam{Default{+RIPPER;DamageFunction(powerDam+plasmaDam+iceDam);}}
Class PlasmaIceWaveBeam : IceBeam{Default{+RIPPER;DamageFunction(powerDam+plasmaDam+iceDam+waveDam);}}
Class HyperBeam : PowerBeamBase{Default{+RIPPER;DamageFunction(hyperDam);Damagetype "Plasma";}}

Class Missile : Rocket{
	Default{
		Speed 60;
		Damage 0;
		DamageFunction(sinscifi_missile_damage);
		Damagetype "ExplosiveImpact";
		SeeSound "";
		DeathSound "";
	}
	States{
		Spawn:
			PMSL A 1 Bright;
			Loop;
		Death:
			Goto Death.SuperMetroid;
		Death.SuperMetroid:
			#### # 0{
				A_Explode((random(sinscifi_missile_splashdamage,sinscifi_missile_splashdamage)));
				A_StartSound("supermetroid/explosion",CHAN_AUTO,CHANF_OVERLAP);
				A_Quake(1,3,0,500);
			}
			SMX3 ABCDEF 2 Bright;
			Stop;
	}
}
Class SuperMissile : Missile{
	Default{
		Scale 1.25;
		DamageFunction(sinscifi_supermissile_damage);
		Damagetype "Explosive";
		DeathSound "";
	}
	States{
		Spawn:
			SMSL A 1 Bright;
			Loop;
		Death:
			Goto Death.SuperMetroid;
		Death.SuperMetroid:
			#### # 0{
				A_Explode((random(sinscifi_supermissile_splashdamage,sinscifi_supermissile_splashdamage)));
				A_StartSound("supermetroid/explosionbig",CHAN_AUTO,CHANF_OVERLAP);
				A_Quake(2,20,0,750);
			}
			SMX3 BCDGHI 3 Bright;
			Stop;
	}
}

//
//	Freezing stuff.
//
Class PowerFrozenWeak : PowerRegeneration
{
	int freezingPotency; property FreezingPotency : freezingPotency;
	uint ownertrans;
	Default
	{
		Powerup.Duration -5;
		Powerup.Strength 0;
	}
	Override void InitEffect(){
		If(owner){
			owner.A_SetTranslation("Ice");
			owner.alpha = 0.5;
		}
		Super.InitEffect();
	}
	Override Void DoEffect(){
		If(owner){
			owner.A_SetSpeed(0);
			owner.A_Stop();
			owner.A_Pain();
			owner.bFORCEPAIN = true;
			owner.bNODAMAGE = true;
			owner.A_DamageSelf(1, Flags: DMSS_FOILINVUL|DMSS_FOILBUDDHA|DMSS_NOFACTOR|DMSS_NOPROTECT);
		}
		Super.DoEffect();
	}
	Override void EndEffect(){
		If(owner){
			owner.A_SetTranslation("None");
			ownertrans = owner.translation;
			owner.alpha = 1;
		}
		Super.EndEffect();
	}
	Override Void DetachFromOwner()
	{
		If (Owner)
		{
			Owner.bNODAMAGE = Owner.Default.bNODAMAGE;
			Owner.bFORCEPAIN = Owner.Default.bFORCEPAIN;
			Owner.bFLOAT = Owner.Default.bFLOAT;
			Owner.A_SetSpeed(Owner.Default.Speed);
		}
		Super.DetachFromOwner();
	}
}
