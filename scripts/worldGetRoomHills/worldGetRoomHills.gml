function worldGetRoomHills(xxx, yyy){
	
	if(xxx == 8 && yyy == 0){
		biome(Zone.hills);
		ww.secBlock = imgRockWallDirt; ww.secX = 4; ww.secY = 1; ww.secType = Sec.bomb;
		ww.canLion = false;
		ww.mobList = [4, objMobWizRobeBoss, objMobWizRobe2, objMobWizRobe2, objMobWizRobe2];
		wmap("///////////////");
		wmap("////=//////////");
		wmap("/........//....");
		wmap("/......../.....");
		wmap("........./.....");
		wmap("........///....");
		wmap("........./.....");
		wmap("...............");
		wmap("/....////......");
		wmap("/..............");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	
	if(xxx == 8 && yyy == 1){
		biome(Zone.hills);
		ww.secBlock = imgRockWallDirt; ww.secX = 5; ww.secY = 7; ww.secType = Sec.bomb;
		wmap("//...........//");
		wmap("//...........//");
		wmap("//.............");
		wmap("//.....//......");
		wmap("//......//.....");
		wmap("//......///....");
		wmap("//////////.....");
		wmap("//../=//.......");
		wmap("//.............");
		wmap("//.............");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	
	if(xxx == 8 && yyy == 2){
		biome(Zone.hills);
		ww.secBlock = imgRockBrown; ww.secX = 12; ww.secY = 2; ww.secType = Sec.bomb;
		wmap("//...........//");
		wmap("//...........//");
		wmap("//......///r.//");
		wmap("//+///////...//");
		wmap("//+//........//");
		wmap("//+//..///+////");
		wmap("//+//..///+////");
		wmap("//.....///+/=//");
		wmap("//....//.....//");
		wmap("//..///......//");
		wmap("/////........//");
		wmap("//...........//");
	}
	
	
	
	
	
	
	if(xxx == 8 && yyy == 3){ // golem
		biome(Zone.hills);
		ww.canLion = false;
		ww.mobList = [1, objMobGolemBoss];////
		ww.noFall = true;
		wmap("//...........//");
		wmap("/s.s.........//");
		wmap("sss...........%");
		wmap("s............%%");
		wmap("s.s...........%");
		wmap("ss.............");
		wmap("ss.............");
		wmap("s.............%");
		wmap("s.............%");
		wmap("ss..%.....%%..%");
		wmap("//..%%...%%%%//");
		wmap("//%%%%...%%%%//");
	}
	
	
	
	if(xxx == 9 && yyy == 0){
		biome(Zone.hills);
		wmap("///////////////");
		wmap("/////=/////////");
		wmap("...............");
		wmap("...............");
		wmap(".....r.rr......");
		wmap("....rrrrrr.....");
		wmap("......rrrrrr...");
		wmap(".......rrr.....");
		wmap("...............");
		wmap(".....r.........");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	if(xxx == 9 && yyy == 1){
		biome(Zone.hills);
		wmap("//...........//");
		wmap("//...........//");
		wmap(".......r.......");
		wmap("...............");
		wmap("...............");
		wmap(".......r.......");
		wmap("...............");
		wmap("...............");
		wmap(".......r.......");
		wmap("...............");
		wmap("///////////////");
		wmap("///////////////");
	}
	
	
	
	if(xxx == 10 && yyy == 0){ // palace
		biome(Zone.hills);
		wmap("////////PPPPP//");
		wmap("////////PPPPP//");
		wmap("........PP=PP./");
		wmap("............../");
		wmap("............../");
		wmap("............../");
		wmap("............../");
		wmap("............../");
		wmap("............../");
		wmap("............../");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	if(xxx == 10 && yyy == 1){
		biome(Zone.hills);
		wmap("//...........//");
		wmap("//...........//");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("///////////////");
		wmap("///////////////");
	}
	
	
	
	if(xxx == 11 && yyy == 0){
		biome(Zone.hills);
		ww.noMobs = true; ww.canLion = false;
		wmap("////////+//////");
		wmap("////////+//////");
		wmap("////////+//////");
		wmap("////////+//////");
		wmap("////////+//////");
		wmap("///...r/+//////");
		wmap("//.......//.../");
		wmap("...///......r..");
		wmap("////////+//.../");
		wmap("////////+//////");
		wmap("////////+//////");
		wmap("////////+//////");
	}
	
	if(xxx == 11 && yyy == 1){
		biome(Zone.hills);
		wmap("////////+//////");
		wmap("///rr///+//rr//");
		wmap("..//////+/rr///");
		wmap(".../////+/rr///");
		wmap(".../////+rrrr//");
		wmap(".....rrr.rrr...");
		wmap("........[......");
		wmap(".....///.rrr///");
		wmap("...///...r/////");
		wmap("..///..../=////");
		wmap("/////......////");
		wmap("//...........//");
	}
	
	if(xxx == 11 && yyy == 2){
		biome(Zone.hills);
		wmap("//...........//");
		wmap("//.........////");
		wmap("//.........//..");
		wmap("//////+//////..");
		wmap("//////+///.....");
		wmap("//////+//......");
		wmap("//.............");
		wmap("//.............");
		wmap("//.............");
		wmap("//...%.W.......");
		wmap("////%%...%%////");
		wmap("////%%...%%////");
	}
	
	
	
	
	
	if(xxx == 12 && yyy == 0){
		biome(Zone.hills);
		wmap("///////////////");
		wmap("///////////////");
		wmap("/..............");
		wmap("/..............");
		wmap("/............//");
		wmap("/............//");
		wmap("/............//");
		wmap("/............//");
		wmap("/............//");
		wmap("/............//");
		wmap("//...........//");
		wmap("///..........//");
	}
	
	
	if(xxx == 12 && yyy == 1){
		biome(Zone.hills);
		ww.secBlock = imgRockWallDirt; ww.secX = 1; ww.secY = 1; ww.secType = Sec.bomb;
		wmap("///..........//");
		wmap("/=//....../////");
		wmap("/./////+////...");
		wmap("/...///+///....");
		wmap("/....//+///....");
		wmap("...............");
		wmap("...............");
		wmap("/..............");
		wmap("//.............");
		wmap("//.............");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	
	if(xxx == 12 && yyy == 2){
		biome(Zone.hills);
		wmap("//...........//");
		wmap("////.........//");
		wmap("...//........%%");
		wmap("...///+/////%%%");
		wmap("....//+///=//%%");
		wmap("...............");
		wmap("...............");
		wmap(".............%%");
		wmap(".............%%");
		wmap(".............%%");
		wmap("//~.........~//");
		wmap("//~~.......~~//");
	}
	
	
	if(xxx == 12 && yyy == 3){
		biome(Zone.hills);
		ww.canLion = false; ww.noMobs = true;
		wmap("~~~~.......~~~~");
		wmap("~~~~.......~~~~");
		wmap("~~...........~~");
		wmap("~~...........~~");
		wmap("~~...........~~");
		wmap("~~...........~~");
		wmap("~~...........~~");
		wmap("~~...........~~");
		wmap("~~...........~~");
		wmap("~~...........~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		if(!pc.eventTrigger[Event.gotSword]){
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupSwordInStone);
		}
	}
	
	
	
	
	
	if(xxx == 13 && yyy == 1){
		biome(Zone.hills);
		ww.canLion = false; ww.noMobs = true;
		wmap("///////////////");
		wmap("//////////::://");
		wmap("........./::://");
		wmap("........./NNN//");
		wmap(".........//+///");
		wmap(".........//+///");
		wmap(".........//+///");
		wmap(".........//+///");
		wmap("............../");
		wmap("............../");
		wmap("/..........%%%/");
		wmap("//%%%%...%%%%//");
	}
	
	
	
	
	if(xxx == 11 && yyy == 11){
		biome(Zone.hills);
		ww.noMobs = true; ww.canLion = false;
		wmap("eeeeeeeeeeeeeee");
		wmap("eeeeeeeeeeeeeee");
		wmap("eeeeeeeeeeeeeee");
		wmap("eeeeeeeeeeeeeee");
		wmap("eeeeeeeeeeeeeee");
		wmap("eeeeeeeeeeeeeee");
		wmap("eeeeeEEEeeeeeee");
		wmap("eeeeE...EEeeeee");
		wmap("eeee......EEeee");
		wmap("eeee........eee");
		wmap("eeee////+///eee");
		wmap("ee//////+////ee");
		
		ww.bmap[6, 5] = imgNPCEagle;
		ww.bmap[7, 5] = imgBlank; ww.bmap[6, 6] = imgBlank; ww.bmap[7, 6] = imgBlank;
		//ww.txt = "Your Wind Stone is cracked. Come back to me when you're stronger and I might fix it.";
		ww.txt = "The cowardly dragons drop monsters onto the world from space, thinking that none will dare to chase them there.\n\nCome back to me once you're stronger and I'll have a proposal for you.";
		if(!pc.eventTrigger[Event.gotFeather] && pc.hpMax >= 200){
			ww.txt = "I could see fighting by your side, but I need to know that you're worthy.\n\nMy offer is this: Wait around for a minute and then I'll attack. If you survive we will be alies.";
		} else if (pc.eventTrigger[Event.gotFeather] && !pc.eventTrigger[Event.gotWindStone]){
			ww.txt = "I see much from this moutian.";
		} else if (pc.eventTrigger[Event.gotFeather] && !pc.eventTrigger[Event.gotWindStone2]){
			ww.txt = "I see the Wind Stone you carry is cracked. I could repair it, if you like.";
			var s = instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupWindStone2);
			s.coinPrice = 255; s.desc = "";
		} else {
			ww.txt = "I see much from this moutian.";
		}
	}
	
	
	

}