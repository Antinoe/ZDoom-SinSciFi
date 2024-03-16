
Class SinPlayerSpartanII : SinPlayer{
	Default{
		SinPlayer.UsePlayerName 1;
		Player.DisplayName "Spartan II";
		Player.Face "STF";
		Player.Portrait "M_BOX1";
		Player.StartItem "SinLoadoutSpartanII";
		Health 75;
		Player.MaxHealth 75;
	}
}
Class SinPlayerSpartanIII : SinPlayerSpartanII{
	Default{
		Player.DisplayName "Spartan III";
		Player.StartItem "SinLoadoutSpartanIII";
		Health 75;
		Player.MaxHealth 75;
	}
}
Class SinPlayerSpartanIV : SinPlayerSpartanII{
	Default{
		Player.DisplayName "Spartan IV";
		Player.StartItem "SinLoadoutSpartanIV";
		Health 75;
		Player.MaxHealth 75;
	}
}
Class SinLoadoutSpartanII : SinLoadout{
	Default{
		DropItem "SinChaingun",256,9999;
		DropItem "SinRifleClip",256,9999;
		DropItem "SinRifleBox",256,9999;
		DropItem "SinMJOLNIRMark5",256,9999;
		DropItem "SinMJOLNIRMark6",256,9999;
		DropItem "SinMJOLNIRGen3",256,9999;
	}
}
Class SinLoadoutSpartanIII : SinLoadout{
	Default{
		DropItem "SinChaingun",256,9999;
		DropItem "SinRifleClip",256,9999;
		DropItem "SinRifleBox",256,9999;
		DropItem "SinSPI",256,9999;
	}
}
Class SinLoadoutSpartanIV : SinLoadout{
	Default{
		DropItem "SinChaingun",256,9999;
		DropItem "SinRifleClip",256,9999;
		DropItem "SinRifleBox",256,9999;
		DropItem "SinMJOLNIRGen2",256,9999;
	}
}

Class SinPlayerHunter : SinPlayer{
	Default{
		SinPlayer.UsePlayerName 1;
		Player.DisplayName "Hunter";
		Player.Face "STF";
		Player.Portrait "M_BOX1";
		Player.StartItem "SinLoadoutHunter";
		Health 100;
		Player.MaxHealth 100;
	}
}
Class SinLoadoutHunter : SinLoadout{
	Default{
		DropItem "SinArmCannon1",256,0;
		DropItem "SinPowerSuit",256,9999;
		DropItem "SinSuitEnergy",256,100;
		//DropItem "SinVariaSuit",256,9999;
		//DropItem "SinGravitySuit",256,9999;
		//DropItem "SinMissileTri",256,0;
		//DropItem "SinSuperMissile",256,0;
		//DropItem "SinSpazer",256,0;
		//DropItem "SinIceBeam",256,0;
		//DropItem "SinWaveBeam",256,0;
		//DropItem "SinPlasmaBeam",256,0;
	}
}

Class SinPlayerSlayer : SinPlayer{
	Default{
		SinPlayer.UsePlayerName 1;
		Player.DisplayName "Slayer";
		Player.Face "STF";
		Player.Portrait "M_BOX1";
		Player.StartItem "SinLoadoutSlayer";
		Health 100;
		Player.MaxHealth 100;
	}
}
Class SinLoadoutSlayer : SinLoadout{
	Default{
		DropItem "SinSuperShotgun",256,2;
		DropItem "SinShellBox",256,20;
		DropItem "SinPraetorSuit",256,9999;
	}
}
