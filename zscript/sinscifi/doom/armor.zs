
Class SinPraetorSuit : SinShielding{
	Default{
		Inventory.Icon "SUITA0";
		Tag "Praetor Suit";
		SinItem.Description "In the tomb with the Doom Marine, relics were discovered, including incantation tablets and an ancient combat suit named the 'Praetor Suit'. Encased in stone, the suit proved nearly impervious to damage, with receptors attracting and dissipating Argent plasma.";
		SinShielding.Shielding "PowerPraetorSuit";
	}
	States{Spawn: SUIT A -1; Stop;}
}
Class PowerPraetorSuit : PowerShielding{
	Default{
		PowerShielding.ShieldingRechargeable 0;
		PowerShielding.ShieldingSiphon 1;
		PowerShielding.ShieldingAmount 200;
		PowerShielding.ShieldingMaxAmount 200;
		PowerShielding.ShieldingRegenDelay 70;
		PowerShielding.ShieldingRegenRate 1;
		PowerShielding.ShieldingRegenAmount 1;
		PowerShielding.ShieldingProtection 0.5;
		PowerShielding.SuitProtection 0.1;
		PowerShielding.HitSound "halo3/shieldhit";
		PowerShielding.SiphonSound "halo3/shieldsiphon";
		PowerShielding.LowSound "halo3/shieldlow";
		PowerShielding.DepletedSound "halo3/shielddepleted";
		PowerShielding.ChargeSound "halo3/shieldcharge";
	}
}
