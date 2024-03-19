
Class SinPowerSuit : SinShielding{
	Default{
		Inventory.Icon "SUITX0";
		Tag "Power Suit";
		SinItem.Description "A high-tech, customizable exoskeleton armor, equipped with advanced weaponry and protective features. The suit has a distinct design with a sleek, futuristic appearance.";
		SinShielding.Shielding "PowerPowerSuit";
	}
	States{Spawn: SUIT X -1; Stop;}
}
Class SinVariaSuit : SinShielding{
	Default{
		Inventory.Icon "SUITS0";
		Tag "Varia Suit";
		Inventory.PickupMessage "Picked up the Varia Suit.";
		SinItem.Description "The Varia Suit is an upgraded version of the Power Suit. It provides enhanced protection against extreme temperatures, allowing you to explore and withstand hazardous environments.";
		SinShielding.Shielding "PowerVariaSuit";
	}
	States{Spawn: SUIT S -1; Stop;}
}
Class SinGravitySuit : SinShielding{
	Default{
		Inventory.Icon "SUITS0";
		Tag "Gravity Suit";
		Inventory.PickupMessage "Picked up the Gravity Suit.";
		SinItem.Description "The Gravity Suit is an advanced upgrade, granting the ability to move freely and navigate underwater environments without the usual restrictions. It enhances mobility and defensive capabilities, making you more versatile in diverse and challenging terrains.";
		SinShielding.Shielding "PowerGravitySuit";
	}
	States{Spawn: SUIT S -1; Stop;}
}

Class PowerPowerSuit : PowerShielding{
	Default{
		Inventory.Icon "SUITX0";
		PowerShielding.ShieldingRechargeable 0;
		PowerShielding.HitSound "halo3/shieldhit";
		PowerShielding.SiphonSound "halo3/shieldsiphon";
		PowerShielding.LowSound "halo3/shieldlow";
		PowerShielding.DepletedSound "halo3/shielddepleted";
		PowerShielding.ChargeSound "halo3/shieldcharge";
	}
	Override void PostBeginPlay(){
		shieldingSiphon = 1;
		shieldingAmount = sinscifi_powersuit_shieldingamount;
		shieldingMaxAmount = sinscifi_powersuit_shieldingmaxamount;
		shieldingRegenDelay = sinscifi_powersuit_shieldingregendelay;
		shieldingRegenRate = sinscifi_powersuit_shieldingregenrate;
		shieldingRegenAmount = sinscifi_powersuit_shieldingregenamount;
		shieldingProtection = sinscifi_powersuit_shieldingprotection;
		suitProtection = sinscifi_powersuit_suitprotection;
		Super.PostBeginPlay();
	}
}
Class PowerVariaSuit : PowerShielding{
	Default{
		Inventory.Icon "SUITS0";
		PowerShielding.ShieldingRechargeable 0;
		PowerShielding.HitSound "halo3/shieldhit";
		PowerShielding.SiphonSound "halo3/shieldsiphon";
		PowerShielding.LowSound "halo3/shieldlow";
		PowerShielding.DepletedSound "halo3/shielddepleted";
		PowerShielding.ChargeSound "halo3/shieldcharge";
	}
	Override void PostBeginPlay(){
		shieldingSiphon = 1;
		shieldingAmount = sinscifi_variasuit_shieldingamount;
		shieldingMaxAmount = sinscifi_variasuit_shieldingmaxamount;
		shieldingRegenDelay = sinscifi_variasuit_shieldingregendelay;
		shieldingRegenRate = sinscifi_variasuit_shieldingregenrate;
		shieldingRegenAmount = sinscifi_variasuit_shieldingregenamount;
		shieldingProtection = sinscifi_variasuit_shieldingprotection;
		suitProtection = sinscifi_variasuit_suitprotection;
		Super.PostBeginPlay();
	}
	Override void AbsorbDamage(int damage, Name damageType, out int newdamage, Actor inflictor, Actor source, int flags){
		If(damageType=="Slime"||damageType=="Fire"){newdamage=0;}
		//Super.AbsorbDamage(damage,damageType,newdamage,inflictor,source,flags);
	}
}
Class PowerGravitySuit : PowerShielding{
	Default{
		Inventory.Icon "SUITS0";
		PowerShielding.ShieldingRechargeable 0;
		PowerShielding.HitSound "halo3/shieldhit";
		PowerShielding.SiphonSound "halo3/shieldsiphon";
		PowerShielding.LowSound "halo3/shieldlow";
		PowerShielding.DepletedSound "halo3/shielddepleted";
		PowerShielding.ChargeSound "halo3/shieldcharge";
	}
	Override void PostBeginPlay(){
		shieldingSiphon = 1;
		shieldingAmount = sinscifi_gravitysuit_shieldingamount;
		shieldingMaxAmount = sinscifi_gravitysuit_shieldingmaxamount;
		shieldingRegenDelay = sinscifi_gravitysuit_shieldingregendelay;
		shieldingRegenRate = sinscifi_gravitysuit_shieldingregenrate;
		shieldingRegenAmount = sinscifi_gravitysuit_shieldingregenamount;
		shieldingProtection = sinscifi_gravitysuit_shieldingprotection;
		suitProtection = sinscifi_gravitysuit_suitprotection;
		Super.PostBeginPlay();
	}
	Override void AbsorbDamage(int damage, Name damageType, out int newdamage, Actor inflictor, Actor source, int flags){
		If(damageType=="Slime"||damageType=="Fire"||damageType=="Lava"||damageType=="Acid"){newdamage=0;}
		//Super.AbsorbDamage(damage,damageType,newdamage,inflictor,source,flags);
	}
}
