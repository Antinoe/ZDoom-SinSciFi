
//
//	Beams
//
Class SinChargeBeam : SinAttachment{
	Default{
		Inventory.Icon "SMUPA0";
		Tag "Charge Beam";
		Inventory.PickupMessage "Picked up the Charge Beam module.";
		SinAttachment.AttachTo "SinArmCannon";
		SinItem.Description "";
	}
	States{Spawn: SMUP AB 3; Loop;}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.charge=1;}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.charge=0;}
}
Class SinSpazer : SinAttachment{
	Default{
		Inventory.Icon "SMUPC0";
		Tag "Spazer";
		Inventory.PickupMessage "Picked up the Spazer module.";
		SinAttachment.AttachTo "SinArmCannon";
		SinItem.Description "The Spazer is an advanced beam weapon upgrade. It enhances your firepower by splitting a fired beam into three parallel beams, allowing for a wider and more effective range of attack.";
	}
	States{Spawn: SMUP CD 3; Loop;}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.spazer=1;}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.spazer=0;}
}
Class SinIceBeam : SinAttachment{
	Default{
		Inventory.Icon "SMUPG0";
		Tag "Ice Beam";
		Inventory.PickupMessage "Picked up the Ice Beam module.";
		SinAttachment.AttachTo "SinArmCannon";
		SinItem.Description "The Ice Beam is a significant weapon upgrade, allowing you to shoot beams that can freeze enemies. This enables strategic advantages, such as immobilizing foes and using them as platforms.";
	}
	States{Spawn: SMUP GH 3; Loop;}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.ice=1;}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.ice=0;}
}
Class SinWaveBeam : SinAttachment{
	Default{
		Inventory.Icon "SMUPE0";
		Tag "Wave Beam";
		Inventory.PickupMessage "Picked up the Wave Beam module.";
		SinAttachment.AttachTo "SinArmCannon";
		SinItem.Description "";
	}
	States{Spawn: SMUP EF 3; Loop;}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.wave=1;}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.wave=0;}
}
Class SinPlasmaBeam : SinAttachment{
	Default{
		Inventory.Icon "SMUPI0";
		Tag "Plasma Beam";
		Inventory.PickupMessage "Picked up the Plasma Beam module.";
		SinAttachment.AttachTo "SinArmCannon";
		SinItem.Description "";
	}
	States{Spawn: SMUP IJ 3; Loop;}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.plasma=1;}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.plasma=0;}
}
Class SinHyperBeam : SinAttachment{
	Default{
		Inventory.Icon "SMUPA0";
		Tag "Hyper Beam";
		Inventory.PickupMessage "Picked up the Hyper Beam module.";
		SinAttachment.AttachTo "SinArmCannon";
		SinItem.Description "A devastating upgradee that rips through almost anything.";
	}
	States{Spawn: SMUP AB 3; Loop;}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.hyper=1;}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.hyper=0;}
}
//
//	Missiles
//
//	Missile
Class SinMissile : SinAttachment{
	Default{
		Inventory.Icon "SMUPK0";
		Tag "Missile Expansion";
		Inventory.PickupMessage "Picked up a Missile Expansion.";
		SinItem.Description "A power-up that increases the maximum capacity of missiles you can carry. Once collected, it allows you to store additional missiles, enhancing your offensive capabilities in battles against various enemies and bosses.";
		SinAttachment.AttachTo "SinArmCannon";
	}
	States{Spawn: SMUP KL 3; Loop;}
	Override void Attached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.missileAmount+=(sinscifi_missile_tank_amount*1);
		cannon.missileMaxAmount+=(sinscifi_missile_tank_amount*1);
	}
	Override void Detached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.missileAmount-=(sinscifi_missile_tank_amount*1);
		cannon.missileMaxAmount-=(sinscifi_missile_tank_amount*1);
	}
}
Class SinMissileDi : SinMissile{
	Default{Tag "Di Missile Expansion";}
	Override void Attached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.missileAmount+=(sinscifi_missile_tank_amount*2);
		cannon.missileMaxAmount+=(sinscifi_missile_tank_amount*2);
	}
	Override void Detached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.missileAmount-=(sinscifi_missile_tank_amount*2);
		cannon.missileMaxAmount-=(sinscifi_missile_tank_amount*2);
	}
}
Class SinMissileTri : SinMissile{
	Default{Tag "Tri Missile Expansion";}
	Override void Attached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.missileAmount+=(sinscifi_missile_tank_amount*3);
		cannon.missileMaxAmount+=(sinscifi_missile_tank_amount*3);
	}
	Override void Detached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.missileAmount-=(sinscifi_missile_tank_amount*3);
		cannon.missileMaxAmount-=(sinscifi_missile_tank_amount*3);
	}
}
Class SinMissileTetra : SinMissile{
	Default{Tag "Tetra Missile Expansion";}
	Override void Attached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.missileAmount+=(sinscifi_missile_tank_amount*4);
		cannon.missileMaxAmount+=(sinscifi_missile_tank_amount*4);
	}
	Override void Detached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.missileAmount-=(sinscifi_missile_tank_amount*4);
		cannon.missileMaxAmount-=(sinscifi_missile_tank_amount*4);
	}
}
Class SinMissilePenta : SinMissile{
	Default{Tag "Penta Missile Expansion";}
	Override void Attached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.missileAmount+=(sinscifi_missile_tank_amount*5);
		cannon.missileMaxAmount+=(sinscifi_missile_tank_amount*5);
	}
	Override void Detached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.missileAmount-=(sinscifi_missile_tank_amount*5);
		cannon.missileMaxAmount-=(sinscifi_missile_tank_amount*5);
	}
}
/*
Class SinMissileHexa : SinMissile{
	Default{Tag "Hexa Missile Expansion";}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.missileMaxAmount+=(tankAmount*6);}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.missileMaxAmount-=(tankAmount*6);}
}
Class SinMissileHepta : SinMissile{
	Default{Tag "Hepta Missile Expansion";}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.missileMaxAmount+=(tankAmount*7);}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.missileMaxAmount-=(tankAmount*7);}
}
Class SinMissileOcta : SinMissile{
	Default{Tag "Octa Missile Expansion";}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.missileMaxAmount+=(tankAmount*8);}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.missileMaxAmount-=(tankAmount*8);}
}
Class SinMissileNona : SinMissile{
	Default{Tag "Nona Missile Expansion";}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.missileMaxAmount+=(tankAmount*9);}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.missileMaxAmount-=(tankAmount*9);}
}
Class SinMissileDeca : SinMissile{
	Default{Tag "Deca Missile Expansion";}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.missileMaxAmount+=(tankAmount*10);}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.missileMaxAmount-=(tankAmount*10);}
}
*/
//	Super Missile
Class SinSuperMissile : SinAttachment{
	Default{
		Inventory.Icon "SMUPM0";
		Tag "Super Missile Expansion";
		Inventory.PickupMessage "Picked up a Super Missile Expansion.";
		SinItem.Description "A powerful upgrade that enhances your missile capabilities. It increases the damage output and impact radius of your missiles, providing a more potent and effective tool for combating tougher enemies and breaking through certain barriers or obstacles in your exploration.";
		SinAttachment.AttachTo "SinArmCannon";
	}
	States{Spawn: SMUP MN 3; Loop;}
	Override void Attached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.superMissileAmount+=(sinscifi_supermissile_tank_amount*1);
		cannon.superMissileMaxAmount+=(sinscifi_supermissile_tank_amount*1);
	}
	Override void Detached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.superMissileAmount-=(sinscifi_supermissile_tank_amount*1);
		cannon.superMissileMaxAmount-=(sinscifi_supermissile_tank_amount*1);
	}
}
Class SinSuperMissileDi : SinSuperMissile{
	Default{Tag "Di Super Missile Expansion";}
	Override void Attached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.superMissileAmount+=(sinscifi_supermissile_tank_amount*2);
		cannon.superMissileMaxAmount+=(sinscifi_supermissile_tank_amount*2);
	}
	Override void Detached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.superMissileAmount-=(sinscifi_supermissile_tank_amount*2);
		cannon.superMissileMaxAmount-=(sinscifi_supermissile_tank_amount*2);
	}
}
Class SinSuperMissileTri : SinSuperMissile{
	Default{Tag "Tri Super Missile Expansion";}
	Override void Attached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.superMissileAmount+=(sinscifi_supermissile_tank_amount*3);
		cannon.superMissileMaxAmount+=(sinscifi_supermissile_tank_amount*3);
	}
	Override void Detached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.superMissileAmount-=(sinscifi_supermissile_tank_amount*3);
		cannon.superMissileMaxAmount-=(sinscifi_supermissile_tank_amount*3);
	}
}
Class SinSuperMissileTetra : SinSuperMissile{
	Default{Tag "Tetra Super Missile Expansion";}
	Override void Attached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.superMissileAmount+=(sinscifi_supermissile_tank_amount*4);
		cannon.superMissileMaxAmount+=(sinscifi_supermissile_tank_amount*4);
	}
	Override void Detached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.superMissileAmount-=(sinscifi_supermissile_tank_amount*4);
		cannon.superMissileMaxAmount-=(sinscifi_supermissile_tank_amount*4);
	}
}
Class SinSuperMissilePenta : SinSuperMissile{
	Default{Tag "Penta Super Missile Expansion";}
	Override void Attached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.superMissileAmount+=(sinscifi_supermissile_tank_amount*5);
		cannon.superMissileMaxAmount+=(sinscifi_supermissile_tank_amount*5);
	}
	Override void Detached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.superMissileAmount-=(sinscifi_supermissile_tank_amount*5);
		cannon.superMissileMaxAmount-=(sinscifi_supermissile_tank_amount*5);
	}
}
/*
Class SinSuperMissileHexa : SinSuperMissile{
	Default{Tag "Hexa Super Missile Expansion";}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.superMissileMaxAmount+=(tankAmount*6);}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.superMissileMaxAmount-=(tankAmount*6);}
}
Class SinSuperMissileHepta : SinSuperMissile{
	Default{Tag "Hepta Super Missile Expansion";}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.superMissileMaxAmount+=(tankAmount*7);}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.superMissileMaxAmount-=(tankAmount*7);}
}
Class SinSuperMissileOcta : SinSuperMissile{
	Default{Tag "Octa Super Missile Expansion";}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.superMissileMaxAmount+=(tankAmount*8);}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.superMissileMaxAmount-=(tankAmount*8);}
}
Class SinSuperMissileNona : SinSuperMissile{
	Default{Tag "Nona Super Missile Expansion";}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.superMissileMaxAmount+=(tankAmount*9);}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.superMissileMaxAmount-=(tankAmount*9);}
}
Class SinSuperMissileDeca : SinSuperMissile{
	Default{Tag "Deca Super Missile Expansion";}
	Override void Attached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.superMissileMaxAmount+=(tankAmount*10);}
	Override void Detached(SinWeapon gun){let cannon=SinArmCannon(gun);cannon.superMissileMaxAmount-=(tankAmount*10);}
}
*/
//	Missile
Class SinRecipeMissileBi : SinRecipe{Default{SinRecipe.Ingredients "SinMissile", "SinMissile";SinRecipe.Result "SinMissileDi",1;}}
Class SinRecipeMissileTri : SinRecipe{Default{SinRecipe.Ingredients "SinMissileDi", "SinMissile";SinRecipe.Result "SinMissileTri",1;}}
Class SinRecipeMissileTetra : SinRecipe{Default{SinRecipe.Ingredients "SinMissileTri", "SinMissile";SinRecipe.Result "SinMissileTetra",1;}}
Class SinRecipeMissilePenta : SinRecipe{Default{SinRecipe.Ingredients "SinMissileTetra", "SinMissile";SinRecipe.Result "SinMissilePenta",1;}}
/*
Class SinRecipeMissileHexa : SinRecipe{Default{SinRecipe.Ingredients "SinMissilePenta", "SinMissile";SinRecipe.Result "SinMissileHexa",1;}}
Class SinRecipeMissileHepta : SinRecipe{Default{SinRecipe.Ingredients "SinMissileHexa", "SinMissile";SinRecipe.Result "SinMissileHepta",1;}}
Class SinRecipeMissileOcta : SinRecipe{Default{SinRecipe.Ingredients "SinMissileHepta", "SinMissile";SinRecipe.Result "SinMissileOcta",1;}}
Class SinRecipeMissileNona : SinRecipe{Default{SinRecipe.Ingredients "SinMissileOcta", "SinMissile";SinRecipe.Result "SinMissileNona",1;}}
Class SinRecipeMissileDeca : SinRecipe{Default{SinRecipe.Ingredients "SinMissileNona", "SinMissile";SinRecipe.Result "SinMissileDeca",1;}}
*/
//	Super Missile
Class SinRecipeSuperMissileBi : SinRecipe{Default{SinRecipe.Ingredients "SinSuperMissile", "SinSuperMissile";SinRecipe.Result "SinSuperMissileDi",1;}}
Class SinRecipeSuperMissileTri : SinRecipe{Default{SinRecipe.Ingredients "SinSuperMissileDi", "SinSuperMissile";SinRecipe.Result "SinSuperMissileTri",1;}}
Class SinRecipeSuperMissileTetra : SinRecipe{Default{SinRecipe.Ingredients "SinSuperMissileTri", "SinSuperMissile";SinRecipe.Result "SinSuperMissileTetra",1;}}
Class SinRecipeSuperMissilePenta : SinRecipe{Default{SinRecipe.Ingredients "SinSuperMissileTetra", "SinSuperMissile";SinRecipe.Result "SinSuperMissilePenta",1;}}
/*
Class SinRecipeSuperMissileHexa : SinRecipe{Default{SinRecipe.Ingredients "SinSuperMissilePenta", "SinSuperMissile";SinRecipe.Result "SinSuperMissileHexa",1;}}
Class SinRecipeSuperMissileHepta : SinRecipe{Default{SinRecipe.Ingredients "SinSuperMissileHexa", "SinSuperMissile";SinRecipe.Result "SinSuperMissileHepta",1;}}
Class SinRecipeSuperMissileOcta : SinRecipe{Default{SinRecipe.Ingredients "SinSuperMissileHepta", "SinSuperMissile";SinRecipe.Result "SinSuperMissileOcta",1;}}
Class SinRecipeSuperMissileNona : SinRecipe{Default{SinRecipe.Ingredients "SinSuperMissileOcta", "SinSuperMissile";SinRecipe.Result "SinSuperMissileNona",1;}}
Class SinRecipeSuperMissileDeca : SinRecipe{Default{SinRecipe.Ingredients "SinSuperMissileNona", "SinSuperMissile";SinRecipe.Result "SinSuperMissileDeca",1;}}
*/

//
//	Suit Upgrades
//
Class PowerScrewAttack : PowerProtection{
	bool flipping;
	Default{
		Inventory.Icon "SMUPA0";
	}
	States{Spawn: SMUP AB 3; Loop;}
	Override void PostBeginPlay(){flipping=false;}
	Override void DoEffect(){
		//If(owner.cmd.buttons&BT_JUMP){}
	}
}
Class PowerHighJumpBoots : PowerHighJump{Default{Powerup.Duration 0x7FFFFFFF;Powerup.Strength 3;}}
