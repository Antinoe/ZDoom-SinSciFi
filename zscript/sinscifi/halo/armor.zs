
//
//	Descriptions filtered from the source below:
//	https://www.halopedia.org/MJOLNIR_Powered_Assault_Armor
//
//	Used ChatGPT AI to quickly describe each one.
//

//	Mark 1-4 aren't actually traditional pieces of armor, but mech suits.
//	This mod will need to reflect that.
/*
Class SinMJOLNIRMKI : SinGreenArmor{
	Default{
		Tag "MJOLNIR Armor MK I";
		Inventory.PickupMessage "Picked up MJOLNIR Armor.";
		SinItem.Description "The MK I, developed in 2515, pioneered key technologies for MJOLNIR armor despite being bulky and tethered to a power source. It introduced artificial muscles, embedded computer systems, and a tactical information-transmitting onboard computer but lacked portability due to energy requirements.";
		Inventory.Amount 1000;
		Inventory.MaxAmount 1000;
		SinArmor.Protection 99;
	}
	States{Spawn: ARM1 A -1; Stop;}
}

Class SinMJOLNIRMKII : SinMJOLNIRMKI{
	Default{
		Tag "MJOLNIR Armor MK II";
		SinItem.Description "The MK II, an advancement over MK I, enhanced mobility with a slimmer profile, featured heat-dispersing coating, and improved self-sealing systems. Despite being powerful, it remained impractical for battlefield use due to the need for physical tethering to a fusion generator.";
		Inventory.Amount 2000;
		Inventory.MaxAmount 2000;
	}
}

Class SinMJOLNIRMKIII : SinMJOLNIRMKI{
	Default{
		Tag "MJOLNIR Armor MK III";
		SinItem.Description "The MK III, building on MK II, introduced wireless power transmission but was rejected due to limited operational range and vulnerability if the generator was disabled, leaving the user helpless inside the inoperable suit.";
		Inventory.Amount 3000;
		Inventory.MaxAmount 3000;
	}
}

Class SinMJOLNIRGenI : SinMJOLNIRMKI{
	Default{
		Tag "MJOLNIR Armor GEN I";
		SinItem.Description "In 2525, the actively deployed GEN1 MJOLNIR Marked a revolutionary era in the Human-Covenant War, featuring iterative upgrades such as personal energy shielding and onboard AI assistance. However, its drawbacks included complex manufacturing and the necessity for custom tailoring for each Spartan wearer.";
		Inventory.Amount 4000;
		Inventory.MaxAmount 4000;
	}
}

Class SinMJOLNIRMKIV : SinMJOLNIRMKI{
	Default{
		Tag "MJOLNIR Armor MK IV";
		SinItem.Description "The MJOLNIR MK IV, a successful redesign led by Dr. Catherine Halsey, became the first mass-produced and deployed suit, featuring an embedded fusion reactor for power. Introduced in 2525, it remained in service until 2551 with numerous iterative upgrades.";
		Inventory.Amount 4000;
		Inventory.MaxAmount 4000;
	}
}
*/

Class SinMJOLNIRMark5 : SinShielding{
	Default{
		Tag "MJOLNIR Armor MK V";
		SinItem.Description "The MJOLNIR MK V, a significant upgrade, introduced energy shielding from Covenant tech and enabled soldier-AI linkage for enhanced field intelligence. Alongside major changes from MK IV, it featured numerous technical improvements, including smaller fusion packs, and was fielded from November 24, 2551, to October 20, 2552.";
		SinShielding.Shielding "PowerMJOLNIRMark5";
	}
}

Class SinMJOLNIRBlack : SinShielding{
	Default{
		Tag "MJOLNIR Armor BLACK";
		SinItem.Description "MJOLNIR: Black, a secret Korean lab prototype, was an advanced version of the MK VI exclusively for Team Black, boasting significant improvements. Deployed during the Covenant invasion of Epsilon Eridani and Operation: BLOWBACK on Verge.";
		SinShielding.Shielding "PowerMJOLNIRBLACK";
	}
}

Class SinMJOLNIRMark6 : SinShielding{
	Default{
		Tag "MJOLNIR Armor MK VI";
		SinItem.Description "The MJOLNIR MK VI, the third version, refines and introduces technical improvements, including a faster energy shield recharge and enhanced synchronization for increased agility and strength. These advancements reduce the need for extended cover and empower Spartans with improved combat capabilities.";
		SinShielding.Shielding "PowerMJOLNIRMark6";
	}
}

Class SinMJOLNIRMark7 : SinShielding{
	Default{
		Tag "MJOLNIR Armor MK VII";
		SinItem.Description "Introduced in January 2553, the MK VII MJOLNIR armor, the fourth iteration, was lighter with features like limited energy shield shaping and a nanotechnology repair suite. However, it was not widely issued due to its complexity and expense, overshadowed by the more versatile and economical GEN2 platform developed for various Spartan generations.";
		SinShielding.Shielding "PowerMJOLNIRMark7";
	}
}

Class SinMJOLNIRGenII : SinShielding{
	Default{
		Tag "MJOLNIR Armor GEN II";
		SinItem.Description "The Generation 2 MJOLNIR [GEN2], developed primarily for Spartan-IVs, streamlines the exoskeleton architecture, improving production efficiency and allowing easy implementation of specialized components. While sacrificing some efficiency, it offers minimal performance improvements over GEN1, employs a faster development model, and includes ad hoc modification systems for tactical packages and upgrades. The Warrior variant is the mainline and widely used, while the Recruit variant is issued to new Spartan personnel.";
		SinShielding.Shielding "PowerMJOLNIRGen2";
	}
}

Class SinMJOLNIRGenIII : SinShielding{
	Default{
		Tag "MJOLNIR Armor GEN III";
		SinItem.Description "MJOLNIR GEN3, the third generation armor, incorporates lessons from GEN2 and restores favorable design characteristics of GEN1. Introduced in February 2559, it brings upgrades like enhanced energy shielding, a more efficient fusion reactor, and cost-effective versatility, becoming the standard Spartan armor by October 2559, alongside upgraded variants like GEN1 MK V[B].";
		SinShielding.Shielding "PowerMJOLNIRGen3";
	}
}

Class PowerMJOLNIRMark5 : PowerShielding{
	Default{
		PowerShielding.ShieldingRechargeable 1;
		PowerShielding.ShieldingAmount 0;
		PowerShielding.ShieldingMaxAmount 75;
		PowerShielding.ShieldingRegenDelay 175;
		PowerShielding.ShieldingRegenRate 2;
		PowerShielding.ShieldingRegenAmount 1;
		PowerShielding.ShieldingProtection 0.5;
		PowerShielding.SuitProtection 0.5;
		PowerShielding.HitSound "halo3/shieldhit";
		PowerShielding.SiphonSound "halo3/shieldsiphon";
		PowerShielding.LowSound "halo3/shieldlow";
		PowerShielding.DepletedSound "halo3/shielddepleted";
		PowerShielding.ChargeSound "halo3/shieldcharge";
	}
}
Class PowerMJOLNIRMark6 : PowerShielding{
	Default{
		PowerShielding.ShieldingRechargeable 1;
		PowerShielding.ShieldingAmount 0;
		PowerShielding.ShieldingMaxAmount 70;
		PowerShielding.ShieldingRegenDelay 140;
		PowerShielding.ShieldingRegenRate 1;
		PowerShielding.ShieldingRegenAmount 1;
		PowerShielding.ShieldingProtection 0.5;
		PowerShielding.SuitProtection 0.5;
		PowerShielding.HitSound "halo3/shieldhit";
		PowerShielding.SiphonSound "halo3/shieldsiphon";
		PowerShielding.LowSound "halo3/shieldlow";
		PowerShielding.DepletedSound "halo3/shielddepleted";
		PowerShielding.ChargeSound "halo3/shieldcharge";
	}
	Override void ShieldBeginCharge(){
		owner.A_GiveInventory("PowerBiofoamInjector",1);
		owner.A_PlaySound("",CHAN_AUTO,CHANF_OVERLAP);
		Super.ShieldBeginCharge();
	}
	Override void ModifyDamage (int damage, Name damageType, out int newdamage, bool passive, Actor inflictor, Actor source, int flags){
		Super.ModifyDamage(damage,damageType,newdamage,passive,inflictor,source,flags);
	}
}
Class PowerBiofoamInjector : PowerRegeneration{
	Default{
		Powerup.Duration -1;
		Powerup.Strength 0;
	}
	Override void DoEffect(){
		//	Need to find a consistent Max Health property..
		owner.GiveBody(1,9999);
		//owner.A_LogInt(owner.Health);
	}
}
Class PowerMJOLNIRMark7 : PowerShielding{
	Default{
		PowerShielding.ShieldingRechargeable 1;
		PowerShielding.ShieldingAmount 0;
		PowerShielding.ShieldingMaxAmount 100;
		PowerShielding.ShieldingRegenDelay 70;
		PowerShielding.ShieldingRegenRate 1;
		PowerShielding.ShieldingRegenAmount 1;
		PowerShielding.ShieldingProtection 0.5;
		PowerShielding.SuitProtection 0.5;
		PowerShielding.HitSound "halo3/shieldhit";
		PowerShielding.SiphonSound "halo3/shieldsiphon";
		PowerShielding.LowSound "halo3/shieldlow";
		PowerShielding.DepletedSound "halo3/shielddepleted";
		PowerShielding.ChargeSound "halo3/shieldcharge";
	}
}
Class PowerMJOLNIRGen2 : PowerShielding{
	Default{
		PowerShielding.ShieldingRechargeable 1;
		PowerShielding.ShieldingAmount 0;
		PowerShielding.ShieldingMaxAmount 105;
		PowerShielding.ShieldingRegenDelay 70;
		PowerShielding.ShieldingRegenRate 1;
		PowerShielding.ShieldingRegenAmount 1;
		PowerShielding.ShieldingProtection 0.5;
		PowerShielding.SuitProtection 0.5;
		PowerShielding.HitSound "halo3/shieldhit";
		PowerShielding.SiphonSound "halo3/shieldsiphon";
		PowerShielding.LowSound "halo3/shieldlow";
		PowerShielding.DepletedSound "halo3/shielddepleted";
		PowerShielding.ChargeSound "halo3/shieldcharge";
	}
}
Class PowerMJOLNIRGen3 : PowerShielding{
	Default{
		PowerShielding.ShieldingRechargeable 1;
		PowerShielding.ShieldingAmount 0;
		PowerShielding.ShieldingMaxAmount 140;
		PowerShielding.ShieldingRegenDelay 35;
		PowerShielding.ShieldingRegenRate 1;
		PowerShielding.ShieldingRegenAmount 1;
		PowerShielding.ShieldingProtection 0.5;
		PowerShielding.SuitProtection 0.5;
		PowerShielding.HitSound "halo3/shieldhit";
		PowerShielding.SiphonSound "halo3/shieldsiphon";
		PowerShielding.LowSound "halo3/shieldlow";
		PowerShielding.DepletedSound "halo3/shielddepleted";
		PowerShielding.ChargeSound "halo3/shieldcharge";
	}
}
