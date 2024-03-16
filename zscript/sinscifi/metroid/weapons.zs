
Class SinArmCannon1 : SinArmCannon{
	Default{
		Tag "Arm Cannon";
		Inventory.PickupMessage "Picked up an Arm Cannon.";
		SinItem.Description "A versatile weapon integrated into your Power Suit. It serves as your primary means of attack, capable of firing various beams, missiles, and special weapons.";
		SinArmCannon.MaxMissiles 0;
		SinArmCannon.MaxSuperMissiles 0;
		SinArmCannon.Charge 0;
		SinArmCannon.Spazer 0;
		SinArmCannon.Ice 0;
		SinArmCannon.Wave 0;
		SinArmCannon.Plasma 0;
		SinArmCannon.BallisticPower 1;
	}
}
Class SinArmCannon2 : SinArmCannon{
	Default{
		SinArmCannon.MaxMissiles 50;
		SinArmCannon.MaxSuperMissiles 5;
		SinArmCannon.Charge 1;
		SinArmCannon.Spazer 1;
	}
	Override void PostBeginPlay(){
		missileAmount=50;
		superMissileAmount=5;
		Super.PostBeginPlay();
	}
}
Class SinArmCannon3 : SinArmCannon{
	Default{
		SinArmCannon.MaxMissiles 125;
		SinArmCannon.MaxSuperMissiles 25;
		SinArmCannon.Charge 1;
		SinArmCannon.Spazer 1;
		SinArmCannon.Wave 1;
	}
	Override void PostBeginPlay(){
		missileAmount=125;
		superMissileAmount=25;
		Super.PostBeginPlay();
	}
}
Class SinArmCannon4 : SinArmCannon{
	Default{
		//SinArmCannon.EnergyTanks 20;
		SinArmCannon.MaxMissiles 250;
		SinArmCannon.MaxSuperMissiles 50;
		SinArmCannon.Charge 1;
		SinArmCannon.Spazer 1;
		SinArmCannon.Ice 1;
		SinArmCannon.Wave 1;
		SinArmCannon.Plasma 1;
		SinArmCannon.BallisticPower 2;
	}
	Override void PostBeginPlay(){
		missileAmount=250;
		superMissileAmount=50;
		Super.PostBeginPlay();
	}
}
