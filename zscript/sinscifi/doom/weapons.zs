
/*
Class SinPistol : SinWeapon replaces Pistol{
	Default{
		Inventory.Icon "PISTA0";
		Tag "$SINWEAP_PISTOL";
		AttackSound "weapons/pistol";
		Inventory.PickupMessage "$SINWEAP_PISTOLPKUP";
		SinItem.Description "$SINWEAP_PISTOLDESC";
		SinWeapon.AmmoType "Pistol";
		SinWeapon.AmmoLoaded "SinPistolAmmoNormal";
		SinWeapon.DefaultMagazine "SinPistolClip";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.CasingVelocity 0,-4,4;
	}
	States{Spawn: PIST A -1; Stop; PISD A 0; PIHT A 0; PIHD A 0; PLST A 0; POST A 0; PLSD A 0; POSD A 0; PLHT A 0; POHT A 0; PLHD A 0; POHD A 0;}
	Override void HandleSprite(int status){
		string ico = "P";
		If(railmode==1){ico=ico.."O";}
		Else If(attachments.Find("SinPistolLight")!=attachments.Size()){ico=ico.."L";}
		Else{ico=ico.."I";}
		If(attachments.Find("SinPistolSuppressor")!=attachments.Size()){ico=ico.."H";}
		Else{ico=ico.."S";}
		If(MaxAmount>10){ico=ico.."D";}
		Else{ico=ico.."T";}
		cursprite=GetSpriteIndex(ico);
		If(chambered&&status!=STATE_FIRE&&status!=STATE_BOLTBACK){curframe=0; ico=ico.."A0";}
		Else{curframe=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite; frame=curframe;
	}
}

Class SinShotgun : SinWeapon replaces Shotgun{
	Default{
		Inventory.Icon "SHOGA0";
		Tag "$SINWEAP_SHOTGUN";
		AttackSound "weapons/shotgf";
		Inventory.Amount 5;
		Inventory.MaxAmount 5;
		Inventory.PickupMessage "$SINWEAP_SHOTGUNPKUP";
		SinItem.Description "$SINWEAP_SHOTGUNDESC";
		SinWeapon.AmmoType "Shotgun";
		SinWeapon.AmmoLoaded "SinShellBuckshot";
		SinWeapon.FireType FIRE_MANUAL;
		SinWeapon.ReloadType RELOAD_BOTTOM;
		SinWeapon.HitscanDamage -1;
		SinWeapon.Spread 1,1;
		SinWeapon.Climb 2,2;
		SinWeapon.CanChamber 1;
		SinWeapon.Chambered 1;
		SinWeapon.SlamFire 0;
		SinWeapon.FireMode1 1,4;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-4,2;
	}
	States{Spawn: SHOG A -1; Stop; SHOS A 0; SHEG A 0; SHES A 0;}
	Override void HandleSprite(int status){
		string ico = "SH";
		If(attachments.Find("SinShotgunBarrel")!=attachments.Size()){ico=ico.."E";}
		Else{ico=ico.."O";}
		If(attachments.Find("SinShotgunStock")!=attachments.Size()){ico=ico.."S";}
		Else{ico=ico.."G";}
		cursprite=GetSpriteIndex(ico);
		If(status!=STATE_BOLTBACK){curframe=0; ico=ico.."A0";}
		Else{curframe=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite;
	}
}

Class SinSuperShotgun : SinWeapon replaces SuperShotgun{
	Default{
		Inventory.Icon "DBSGA0";
		Tag "$SINWEAP_SSG";
		AttackSound "weapons/sshotf";
		Inventory.PickupMessage "$SINWEAP_SSGPKUP";
		SinItem.Description "$SINWEAP_SSGDESC";
		SinWeapon.AmmoType "Shotgun";
		SinWeapon.AmmoLoaded "SinShellBirdshot";
		SinWeapon.FireType FIRE_DOUBLE;
		SinWeapon.SpreadMultiplier 0.5,0.5;
		SinWeapon.Climb -1,-1;
		SinWeapon.BarrelsLoaded 1,1;
		SinWeapon.FireMode1 1,4;
		SinItem.BigItem 1;
		SinWeapon.OpenSound "weapons/sshoto";
		SinWeapon.CloseSound "weapons/sshotc";
		SinWeapon.LoadSound "weapons/sshotl";
		SinWeapon.CasingVelocity -8,0,2;
	}
	States{Spawn: DBSG A -1; Stop; DBCG A 0; DBSR A 0; DBCR A 0;}
	Override void HandleSprite(int status){
		string ico = "DB";
		If(attachments.Find("SinSSGChoke")!=attachments.Size()){ico=ico.."C";}
		Else{ico=ico.."S";}
		If(attachments.Find("SinSSGScope")!=attachments.Size()){ico=ico.."R";}
		Else{ico=ico.."G";}
		cursprite=GetSpriteIndex(ico);
		ico=ico.."A0";
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite;
	}
}

Class SinSawedOff : SinWeapon{
	Default{
		Inventory.Icon "SAWDA0";
		Tag "$SINWEAP_SSGMOD";
		AttackSound "weapons/sawdgun";
		Inventory.PickupMessage "$SINWEAP_SSGMODPKUP";
		SinItem.Description "$SINWEAP_SSGMODDESC";
		SinWeapon.AmmoType "Shotgun";
		SinWeapon.AmmoLoaded "SinShellBuckshot";
		SinWeapon.FireType FIRE_DOUBLE;
		SinWeapon.HitscanDamage -2;
		SinWeapon.SpreadMultiplier 2,2;
		SinWeapon.Climb 7,7;
		SinWeapon.BarrelsLoaded 1,1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.OpenSound "weapons/sshoto";
		SinWeapon.CloseSound "weapons/sshotc";
		SinWeapon.LoadSound "weapons/sshotl";
		SinWeapon.CasingVelocity -8,0,2;
	}
	States{Spawn: SAWD A -1; Stop;}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
}

Class SinSMG : SinWeapon replaces Chaingun{
	Default{
		Inventory.Icon "SMGPA0";
		Tag "$SINWEAP_SMG";
		AttackSound "weapons/smg";
		Inventory.PickupMessage "$SINWEAP_SMGPKUP";
		SinItem.Description "$SINWEAP_SMGDESC";
		SinWeapon.AmmoType "Pistol";
		SinWeapon.AmmoLoaded "SinPistolAmmoNormal";
		SinWeapon.DefaultMagazine "SinSMGClip";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.Spread -0.5,-0.5;
		SinWeapon.ClimbMultiplier 0.5,0.5;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 1,4;
		SinWeapon.FireMode2 3,1;
		SinWeapon.CasingVelocity 0,-4,4;
	}
	States{Spawn: SMGP A -1; Stop; SMGA A 0; SSGP A 0; SSGA A 0; SMLP A 0; SMOP A 0; SMLA A 0; SMOA A 0; SSLP A 0; SSOP A 0; SSLA A 0; SSOA A 0;}
	Override void HandleSprite(int status){
		string ico = "S";
		If(attachments.Find("SinSMGScope")!=attachments.Size()){ico=ico.."S";}
		Else{ico=ico.."M";}
		If(railmode==2){ico=ico.."O";}
		Else If(attachments.Find("SinSMGLaser")!=attachments.Size()){ico=ico.."L";}
		Else{ico=ico.."G";}
		If(firemode==1){ico=ico.."A";}
		Else{ico=ico.."P";}
		cursprite=GetSpriteIndex(ico);
		If(MaxAmount>10){
			If(!chambered||status==STATE_FIRE||status==STATE_BOLTBACK){curframe=3; ico=ico.."D0";}
			Else{curframe=0; ico=ico.."A0";}
		}
		Else If(MaxAmount>0){
			If(!chambered||status==STATE_FIRE||status==STATE_BOLTBACK){curframe=4; ico=ico.."E0";}
			Else{curframe=1; ico=ico.."B0";}
		}
		Else{
			If(!chambered||status==STATE_FIRE||status==STATE_BOLTBACK){curframe=5; ico=ico.."F0";}
			Else{curframe=2; ico=ico.."C0";}
		}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite; frame=curframe;
	}
}

Class SinChaingun : SinWeapon replaces RocketLauncher{
	Default{
		Inventory.Icon "MGUNA0";
		Tag "$SINWEAP_CHAIN";
		AttackSound "weapons/chngun";
		Inventory.PickupMessage "$SINWEAP_CHAINPKUP";
		SinItem.Description "$SINWEAP_CHAINDESC";
		SinWeapon.AmmoType "Rifle";
		SinWeapon.AmmoLoaded "SinRifleAmmoNormal";
		SinWeapon.DefaultMagazine "SinRifleClip";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.CanChamber 1;
		SinWeapon.FireMode1 999,3;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-4,2;
	}
	States{Spawn: MGUN A -1; Stop; MGUB A 0; MGSN A 0; MGSB A 0;}
	Override void HandleSprite(int status){
		string ico = "MG";
		If(attachments.Find("SinChaingunBarrel")!=attachments.Size()){ico=ico.."S";}
		Else{ico=ico.."U";}
		If(attachments.Find("SinChaingunBipod")!=attachments.Size()){ico=ico.."B";}
		Else{ico=ico.."N";}
		cursprite=GetSpriteIndex(ico);
		If(MaxAmount>0){curframe=0; ico=ico.."A0";}
		Else{curframe=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite; frame=curframe;
	}
}

Class SinPlasmaRifle : SinWeapon replaces PlasmaRifle{
	Default{
		Inventory.Icon "PLASA0";
		Tag "$SINWEAP_PLASMA";
		AttackSound "weapons/plasmaf";
		Inventory.PickupMessage "$SINWEAP_PLASMAPKUP";
		SinItem.Description "$SINWEAP_PLASMADESC";
		SinWeapon.AmmoType "Battery";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_MAG;
		SinWeapon.AttackType ATTACK_HITSCAN;
		SinWeapon.HitscanDamage 25;
		SinWeapon.HitscanFlags FBF_NORANDOM;
		SinWeapon.HitscanRange 1024;
		SinWeapon.HitscanPuff "SinPlasmaPuff";
		SinWeapon.Noise 256;
		SinWeapon.AmmoCost 5;
		SinWeapon.FireMode1 999,4;
		SinWeapon.DefaultMagazine "SinCell";
		SinItem.AmountMultiplier 0.5;
		SinItem.BigItem 1;
		SinWeapon.DrySound "weapons/plasdry";
	}
	States{Spawn: PLAS A -1; Stop; PLAH A 0; PLBS A 0; PLBH A 0;}
	Override void HandleSprite(int status){
		string ico = "PL";
		If(attachments.Find("SinPlasmaRifleBarrel")!=attachments.Size()){ico=ico.."B";}
		Else{ico=ico.."A";}
		If(attachments.Find("SinPlasmaRifleHeatsink")!=attachments.Size()){ico=ico.."H";}
		Else{ico=ico.."S";}
		cursprite=GetSpriteIndex(ico);
		If(MaxAmount>0){
			If(cooldown){curframe=4; ico=ico.."E0";}
			Else If(firemode==1){curframe=2; ico=ico.."C0";}
			Else{curframe=0; ico=ico.."A0";}
		}
		Else{
			If(cooldown){curframe=5; ico=ico.."F0";}
			Else If(firemode==1){curframe=3; ico=ico.."D0";}
			Else{curframe=1; ico=ico.."B0";}
		}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		sprite=cursprite; frame=curframe;
	}
	Override void ChangeMode(SinPlayer shooter){
		Super.ChangeMode(shooter);
		If(firemode==1){
			AttackSound="weapons/plsaltf";
			guncharge=105;
			ammocost=200;
			coolmax=350;
			scandmg=40;
			scanrange=2048;
			noise=512;
			If(attachments.Find("SinPlasmaRifleHeatsink")!=attachments.Size()){multishot=50;}
			Else{multishot=40;}
		}Else{
			AttackSound="weapons/plasmaf";
			guncharge=0;
			If(attachments.Find("SinPlasmaRifleHeatsink")!=attachments.Size()){ammocost=4;}
			Else{ammocost=5;}
			coolmax=0;
			scandmg=25;
			scanrange=1024;
			noise=256;
			multishot=1;
		}
		HandleSprite();
	}
}

Class SinRocketLauncher : SinWeapon replaces BFG9000{
	Default{
		Inventory.Icon "LAUNA0";
		Tag "$SINWEAP_ROCKET";
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
		Inventory.PickupMessage "$SINWEAP_ROCKETPKUP";
		SinItem.Description "$SINWEAP_ROCKETDESC";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.AttackType ATTACK_PROJECTILE;
		SinWeapon.Projectile "SinRocket";
		SinWeapon.Noise 256;
		SinWeapon.Recoil 12;
		SinWeapon.FireMode1 1,7;
		SinItem.BigItem 1;
	}
	States{Spawn: LAUN A -1; Stop;}
	Override void HandleSprite(int status){cursprite=spawnstate.sprite;}
}

Class SinAncientRifle : SinWeapon{
	Default{
		Inventory.Icon "BR38A0";
		Tag "$SINWEAP_SECRET";
		AttackSound "weapons/brifle";
		Inventory.Amount 9;
		Inventory.MaxAmount 10;
		Inventory.PickupMessage "$SINWEAP_SECRETPKUP";
		SinItem.Description "$SINWEAP_SECRETDESC";
		SinWeapon.AmmoType "Ancient";
		SinWeapon.AmmoLoaded "SinAncientAmmo";
		SinWeapon.FireType FIRE_AUTO;
		SinWeapon.ReloadType RELOAD_TOP;
		SinWeapon.DamageMultiplier 2;
		SinWeapon.ClimbMultiplier 0.5,0.5;
		SinWeapon.CanChamber 1;
		SinWeapon.Chambered 1;
		SinWeapon.FireMode1 1,4;
		SinItem.BigItem 1;
		SinWeapon.CasingVelocity 0,-2,8;
	}
	States{Spawn: BR38 A -1; Stop;}
	Override void HandleSprite(int status){
		cursprite=spawnstate.sprite;
		string ico = "BR38";
		If(type=="Rifle"){ico="BR39";}
		If(chambered&&status!=STATE_FIRE&&status!=STATE_BOLTBACK){curframe=0; ico=ico.."A0";}
		Else{curframe=1; ico=ico.."B0";}
		icon=TexMan.CheckForTexture(ico,TexMan.Type_Any);
		frame=curframe;
	}
}
*/
