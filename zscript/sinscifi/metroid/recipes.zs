
Class SinSuitEnergy : SinItem{
	Default{
		Inventory.Icon "SMX1D0";
		Tag "Suit Energy";
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
		Inventory.PickupMessage "Picked up suit energy.";
		SinItem.Description "Adaptable energy like this can be combined with various technology to integrate them into the Power Suit.";
		SinItem.Stackable 0;
		SinItem.RemoveWhenEmpty 1;
		//	So you never run out.
		SinItem.Infinite 1;
	}
	States{Spawn: SMX1 D -1; Stop;}
}
Class SinEnergyTank : SinItem{
	Default{
		Inventory.Icon "SMX1D0";
		Tag "Energy Tank";
		Inventory.Amount 20;
		Inventory.MaxAmount 20;
		Inventory.PickupMessage "Picked up an energy tank.";
		SinItem.Description "A suit battery. Insert into your Power Suit to increase its Max Shielding.";
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: SMX1 D -1; Stop;}
}
/*
Class SinRecipeChargeBeam : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinSuitEnergy";
		SinRecipe.Result "SinChargeBeam", 1;
	}
}
*/
Class SinRecipeSpazer : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinShotgun";
		SinRecipe.Result "SinSpazer", 1;
	}
}
Class SinRecipeIceBeam : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinSuperShotgun";
		SinRecipe.Result "SinIceBeam", 1;
	}
}
Class SinRecipeWaveBeam : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinChaingun";
		SinRecipe.Result "SinWaveBeam", 1;
	}
}
Class SinRecipePlasmaBeam : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinPlasmaRifle";
		SinRecipe.Result "SinPlasmaBeam", 1;
	}
}
Class SinRecipeHyperBeam : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinRocketLauncher";
		SinRecipe.Result "SinHyperBeam", 1;
	}
}
Class SinRecipeMissile1 : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinGunpowder4";
		SinRecipe.Result "SinMissile", 1;
	}
}
Class SinRecipeMissile2 : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinGrenade";
		SinRecipe.Result "SinMissile", 1;
	}
}
Class SinRecipeMissile3 : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinProxMine";
		SinRecipe.Result "SinMissile", 1;
	}
}
Class SinRecipeSuperMissile : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinMissilePenta";
		SinRecipe.Result "SinSuperMissile", 1;
	}
}
Class SinRecipeVariaSuit : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinPowerSuit", "SinRadSuit";
		SinRecipe.Result "SinVariaSuit", 1;
	}
}
Class SinRecipeGravitySuit : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinVariaSuit", "SinPlasmaRifle";
		SinRecipe.Result "SinGravitySuit", 1;
	}
}
