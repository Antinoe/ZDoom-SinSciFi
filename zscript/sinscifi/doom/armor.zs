
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
		PowerShielding.HitSound "halo3/shieldhit";
		PowerShielding.SiphonSound "halo3/shieldsiphon";
		PowerShielding.LowSound "halo3/shieldlow";
		PowerShielding.DepletedSound "halo3/shielddepleted";
		PowerShielding.ChargeSound "halo3/shieldcharge";
	}
	Override void PostBeginPlay(){
		shieldingSiphon = 1;
		shieldingAmount = sinscifi_praetorsuit_shieldingamount;
		shieldingMaxAmount = sinscifi_praetorsuit_shieldingmaxamount;
		shieldingRegenDelay = sinscifi_praetorsuit_shieldingregendelay;
		shieldingRegenRate = sinscifi_praetorsuit_shieldingregenrate;
		shieldingRegenAmount = sinscifi_praetorsuit_shieldingregenamount;
		shieldingProtection = sinscifi_praetorsuit_shieldingprotection;
		suitProtection = sinscifi_praetorsuit_suitprotection;
		Super.PostBeginPlay();
	}
}
