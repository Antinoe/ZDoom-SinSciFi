
Class DOOMExtraLife : Inventory{
	//int extraLifeTimer;
	Default{
		Inventory.Amount 1;
		Inventory.MaxAmount 100;
	}
	States{
	Spawn:
		STIM A 1;
		Loop;
	}
	Override bool TryPickup(in out Actor toucher){
		If(toucher){
			toucher.A_StartSound("doometernal/extralife",CHAN_AUTO,CHANF_OVERLAP);
			toucher.A_StartSound("doometernal/extralifetoast",CHAN_AUTO,CHANF_OVERLAP);
		}
		Return Super.TryPickup(toucher);
	}
	Override void Tick(){
		If(owner){
			owner.GiveInventory("DOOMExtraLifeBuddha",1);
			If(owner.Health<=1){
				UseLife();
			}
			//	https://forum.zdoom.org/viewtopic.php?t=74464
			//	Thanks, Kzer-Za. Maybe I'll use this.
			/*
			MusicVolume = GetCVar("snd_musicvolume");
			If(MusicVolume < 1.0){}
			*/
			//If(extraLifeTimer>0){extraLifeTimer--;}
			//If(extraLifeTimer<=0){owner.SetMusicVolume(1.0);}
		}
	}
	Virtual void UseLife(){
		If(owner){
			owner.GiveBody(100,100);
			owner.A_StartSound("doometernal/extralifestart",CHAN_AUTO,CHANF_OVERLAP);
			owner.A_SetBlend("White",1,70,"Gray",0);
			owner.GiveInventory("DOOMExtraLifeImmunity",1);
			//extraLifeTimer = 70;
			//owner.SetMusicVolume(0.05);
			If(Amount<=1){owner.TakeInventory("DOOM1Up",1);}
			Else{Amount--;}
		}
	}
	Override void DetachFromOwner(){
		If(owner){
			owner.TakeInventory("DOOMExtraLifeBuddha",1);
		}
	}
}
Class DOOMExtraLifeBuddha : PowerBuddha{
	Default{
		Inventory.Icon "STIMA0";
		Inventory.Amount 1;
		Inventory.MaxAmount 1;
		//Powerup.Duration 0x7FFFFFFF;
		Powerup.Duration 2;
	}
	Override void InitEffect(){
		If(owner){
		}
		Super.InitEffect();
	}
	Override void DoEffect(){
		If(owner){
		}
		Super.DoEffect();
	}
	Override void EndEffect(){
		If(owner){
		}
		Super.EndEffect();
	}
	Override void ModifyDamage (int damage, Name damageType, out int newdamage, bool passive, Actor inflictor, Actor source, int flags){
		Super.ModifyDamage(damage,damageType,newdamage,passive,inflictor,source,flags);
	}
	Override void AbsorbDamage(int damage, Name damageType, out int newdamage, Actor inflictor, Actor source, int flags){
		If(owner){}
		Super.AbsorbDamage(damage,damageType,newdamage,inflictor,source,flags);
	}
}
Class DOOMExtraLifeImmunity : PowerProtection{
	Default{
		Inventory.Icon "MEGAA0";
		Powerup.Duration -2;
		DamageFactor "Normal", 0;
		//Powerup.Color "None";
		Powerup.Color "00 00 00", 0;
	}
}
Class DOOM1Up : DOOMExtraLife{Default{Inventory.Amount 1;}}
Class DOOM2Up : DOOM1Up{Default{Inventory.Amount 2;}}
Class DOOM3Up : DOOM1Up{Default{Inventory.Amount 3;}}
Class DOOM4Up : DOOM1Up{Default{Inventory.Amount 4;}}
Class DOOM5Up : DOOM1Up{Default{Inventory.Amount 5;}}
