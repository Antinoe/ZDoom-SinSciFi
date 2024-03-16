
Class SinArmCannonCheat : SinAttachment{
	Default{
		Inventory.Icon "MEGAA0";
		Tag "Arm Cannon Upgrade Cheat";
		Inventory.PickupMessage "Picked up the Cheat module.";
		SinAttachment.AttachTo "SinArmCannon";
		SinItem.Description "Attach this to gain all beams and maximum missiles/super missiles.";
	}
	States{Spawn: MEGA A -1; Stop;}
	Override void Attached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.charge=1;
		cannon.spazer=1;
		cannon.ice=1;
		cannon.wave=1;
		cannon.plasma=1;
		cannon.ballisticPower=3;
		cannon.missileMaxAmount+=250;
		cannon.superMissileMaxAmount+=50;
	}
	Override void Detached(SinWeapon gun){
		let cannon=SinArmCannon(gun);
		cannon.charge=0;
		cannon.spazer=0;
		cannon.ice=0;
		cannon.wave=0;
		cannon.plasma=0;
		cannon.ballisticPower=3;
		cannon.missileMaxAmount-=250;
		cannon.superMissileMaxAmount-=50;
	}
}
