
Class SinPowerSuit : SinShielding{
	Default{
		Inventory.Icon "SUITZ0";
		Tag "Power Suit";
		SinItem.Description "A high-tech, customizable exoskeleton armor, equipped with advanced weaponry and protective features. The suit has a distinct design with a sleek, futuristic appearance.";
		SinShielding.Shielding "PowerPowerSuit";
	}
	States{Spawn: SUIT Z -1; Stop;}
}
Class SinVariaSuit : SinShielding{
	Default{
		Inventory.Icon "SUITX0";
		Tag "Varia Suit";
		Inventory.PickupMessage "Picked up the Varia Suit.";
		SinItem.Description "The Varia Suit is an upgraded version of the Power Suit. It provides enhanced protection against extreme temperatures, allowing you to explore and withstand hazardous environments.";
		SinShielding.Shielding "PowerVariaSuit";
	}
	States{Spawn: SUIT X -1; Stop;}
}
Class SinGravitySuit : SinShielding{
	Default{
		Inventory.Icon "SUITW0";
		Tag "Gravity Suit";
		Inventory.PickupMessage "Picked up the Gravity Suit.";
		SinItem.Description "The Gravity Suit is an advanced upgrade, granting the ability to move freely and navigate underwater environments without the usual restrictions. It enhances mobility and defensive capabilities, making you more versatile in diverse and challenging terrains.";
		SinShielding.Shielding "PowerGravitySuit";
	}
	States{Spawn: SUIT W -1; Stop;}
}

Class PowerPowerSuit : PowerShielding{
	Default{
		Inventory.Icon "SUITZ0";
		//	Can't get colors working, for some reason..
		//Powerup.Color 0, 255, 0, 0.125;
		//Powerup.Color "ff ff ff", 0.2;
		PowerShielding.HitSound "halo3/shieldhit";
		PowerShielding.SiphonSound "halo3/shieldsiphon";
		PowerShielding.LowSound "halo3/shieldlow";
		PowerShielding.DepletedSound "halo3/shielddepleted";
		PowerShielding.ChargeSound "halo3/shieldcharge";
	}
	Override void PostBeginPlay(){
		Super.PostBeginPlay();
		If(cvar.GetCVar('sinscifi_metroid_recharge').getbool()){shieldingRechargeable=1;}Else{shieldingRechargeable=0;}
		If(cvar.GetCVar('sinscifi_metroid_siphon').getbool()){shieldingSiphon=1;}Else{shieldingSiphon=0;}
		shieldingAmount = sinscifi_powersuit_shieldingamount;
		shieldingMaxAmount = sinscifi_powersuit_shieldingmaxamount;
		shieldingRegenDelay = sinscifi_powersuit_shieldingregendelay;
		shieldingRegenRate = sinscifi_powersuit_shieldingregenrate;
		shieldingRegenAmount = sinscifi_powersuit_shieldingregenamount;
		shieldingProtection = sinscifi_powersuit_shieldingprotection;
		suitProtection = sinscifi_powersuit_suitprotection;
		owner.A_SetBlend("White",1,105,"Yellow",0);
	}
	Override void InitEffect(){
		If(owner){
			owner.GiveInventory("PowerAuxilurySpeed",1);
			owner.GiveInventory("PowerAuxiluryJump",1);
		}
	}
	Override void DoEffect(){
		Super.DoEffect();
		If(owner){
			//	Holding +ZOOM will concentrate to restore Missiles and Shielding.
		}
	}
	Override void EndEffect(){
		If(owner){
			owner.TakeInventory("PowerAuxilurySpeed",1);
			owner.TakeInventory("PowerAuxiluryJump",1);
		}
	}
}
Class PowerVariaSuit : PowerPowerSuit{
	Default{
		Inventory.Icon "SUITX0";
	}
	Override void PostBeginPlay(){
		Super.PostBeginPlay();
		shieldingAmount = sinscifi_variasuit_shieldingamount;
		shieldingMaxAmount = sinscifi_variasuit_shieldingmaxamount;
		shieldingRegenDelay = sinscifi_variasuit_shieldingregendelay;
		shieldingRegenRate = sinscifi_variasuit_shieldingregenrate;
		shieldingRegenAmount = sinscifi_variasuit_shieldingregenamount;
		shieldingProtection = sinscifi_variasuit_shieldingprotection;
		suitProtection = sinscifi_variasuit_suitprotection;
		owner.A_SetBlend("White",1,105,"Orange",0);
	}
	//	Doesn't work yet.
	Override void ModifyDamage (int damage, Name damageType, out int newdamage, bool passive, Actor inflictor, Actor source, int flags){
		//If(damageType=="Slime"||damageType=="Fire"){newdamage=0;}
		Super.ModifyDamage(damage,damageType,newdamage,passive,inflictor,source,flags);
	}
	Override void AbsorbDamage(int damage, Name damageType, out int newdamage, Actor inflictor, Actor source, int flags){
		If(damageType=="Slime"||damageType=="Fire"){newdamage=0;}
		//Super.AbsorbDamage(damage,damageType,newdamage,inflictor,source,flags);
	}
}
Class PowerGravitySuit : PowerPowerSuit{
	Default{
		Inventory.Icon "SUITW0";
	}
	Override void PostBeginPlay(){
		Super.PostBeginPlay();
		shieldingAmount = sinscifi_gravitysuit_shieldingamount;
		shieldingMaxAmount = sinscifi_gravitysuit_shieldingmaxamount;
		shieldingRegenDelay = sinscifi_gravitysuit_shieldingregendelay;
		shieldingRegenRate = sinscifi_gravitysuit_shieldingregenrate;
		shieldingRegenAmount = sinscifi_gravitysuit_shieldingregenamount;
		shieldingProtection = sinscifi_gravitysuit_shieldingprotection;
		suitProtection = sinscifi_gravitysuit_suitprotection;
		owner.A_SetBlend("White",1,105,"Purple",0);
		//	Not finished yet.
		//GiveInventory("PowerScrewAttack",1);
	}
	Override void ModifyDamage (int damage, Name damageType, out int newdamage, bool passive, Actor inflictor, Actor source, int flags){
		If(damageType=="Slime"||damageType=="Fire"||damageType=="Lava"||damageType=="Acid"){newdamage=0;}
		Super.ModifyDamage(damage,damageType,newdamage,passive,inflictor,source,flags);
	}
	Override void AbsorbDamage(int damage, Name damageType, out int newdamage, Actor inflictor, Actor source, int flags){
		If(damageType=="Slime"||damageType=="Fire"||damageType=="Lava"||damageType=="Acid"){newdamage=0;}
		//Super.AbsorbDamage(damage,damageType,newdamage,inflictor,source,flags);
	}
}
