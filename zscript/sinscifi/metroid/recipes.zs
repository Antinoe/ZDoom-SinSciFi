
Class SinSuitEnergy : SinItem{
	Default{
		Inventory.Icon "SMX1D0";
		Tag "Suit Energy";
		Inventory.Amount 100;
		Inventory.MaxAmount 1000;
		Inventory.PickupMessage "Picked up suit energy.";
		SinItem.Description "Adaptable energy like this can be combined with various technology to integrate them into the Power Suit.";
		SinItem.Stackable 1;
		SinItem.RemoveWhenEmpty 1;
	}
	States{Spawn: SMX1 D -1; Stop;}
}
Class SinRecipeChargeBeam : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinSuitEnergy";
		SinRecipe.Result "SinChargeBeam", 1;
	}
}
Class SinRecipeSpazer : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinChaingun";
		SinRecipe.Result "SinSpazer", 1;
	}
}
Class SinRecipeIceBeam : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinPlasmaRifle";
		SinRecipe.Result "SinWaveBeam", 1;
	}
}
Class SinRecipeWaveBeam : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinSuperShotgun";
		SinRecipe.Result "SinWaveBeam", 1;
	}
}
Class SinRecipePlasmaBeam : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinRocketLauncher";
		SinRecipe.Result "SinPlasmaBeam", 1;
	}
}
Class SinRecipeMissile1 : SinRecipe{
	Default{
		SinRecipe.Ingredients "SinSuitEnergy", "SinGrenade";
		SinRecipe.Result "SinMissile", 1;
	}
}
Class SinRecipeMissile2 : SinRecipe{
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
