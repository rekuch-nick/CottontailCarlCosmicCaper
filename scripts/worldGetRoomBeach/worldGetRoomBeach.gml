function worldGetRoomBeach(xxx, yyy){
	
	if(xxx == 10 && yyy == 9){
		biome(Zone.beach);
		wmap("pp.........pppp");
		wmap("pp...........pp");
		wmap("p..............");
		wmap("...............");
		wmap(".....pppp......");
		wmap("......p........");
		wmap("...............");
		wmap("...............");
		wmap("...~~~~~~~~....");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	if(xxx == 11 && yyy == 9){ // wol's house
		biome(Zone.beach);
		wmap("pp////////////p");
		wmap("pp///////////pp");
		wmap("...////=////...");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("~~~~.......~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	if(xxx == 12 && yyy == 9){
		biome(Zone.beach);
		ww.mobList = [5, objMobBeachTroll, objMobBeachTroll, objMobBeachTroll, objMobBeachTroll, objMobBeachTroll];
		ww.secBlock = imgPalmTreeSand; ww.secX = 5 ww.secY = 1; ww.secType = Sec.burn;
		wmap("ppppppppppppppp");
		wmap("ppppp=pppp.....");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	if(xxx == 13 && yyy == 9){
		biome(Zone.beach);
		ww.mobList = [5, objMobBeachTroll, objMobBeachTroll, objMobBeachTroll, objMobBeachTroll, objMobBeachTroll];
		wmap("ppppppppppppppp");
		wmap("..............p");
		wmap("..............p");
		wmap(".......~~~~...p");
		wmap(".....~~~......p");
		wmap(".....~........p");
		wmap("....~~.........");
		wmap("...~~~.........");
		wmap("~~~~~~~~~......");
		wmap("~~~~~~~~~~..~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	if(xxx == 14 && yyy == 9){
		biome(Zone.beach);
		ww.secBlock = imgPalmTreeSand; ww.secX = 5 ww.secY = 4; ww.secType = Sec.burn;
		wmap("ppppppppppppppp");
		wmap("ppppppppppppppp");
		wmap("ppppppppppppppp");
		wmap("ppppppppppp....");
		wmap("ppppp=pp.......");
		wmap("ppp............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	if(xxx == 15 && yyy == 9){
		biome(Zone.beach);
		ww.secBlock = imgPalmTreeSand; ww.secX = 11; ww.secY = 2; ww.secType = Sec.burn;
		wmap("ppppppppppppppp");
		wmap("ppppppppppppppp");
		wmap("ppppppppppp=ppp");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	
	if(xxx == 16 && yyy == 9){
		biome(Zone.beach);
		ww.mobList = [12, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball];
		ww.canLion = false; ww.noWet = true;
		wmap("pppppp/////pppp");
		wmap("pppppp/=///pppp");
		wmap("ppp......pppppp");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	if(xxx == 17 && yyy == 9){
		biome(Zone.beach);
		ww.secBlock = imgPalmTreeSand; ww.secX = 11; ww.secY = 2; ww.secType = Sec.burn;
		wmap("ppppp%..%%%%ppp");
		wmap("pppppp..%%ppppp");
		wmap("pppppp..ppp=ppp");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	
	if(xxx == 18 && yyy == 9){
		biome(Zone.beach);
		ww.secBlock = imgRockWall; ww.secX = 12; ww.secY = 9; ww.secType = Sec.bomb;
		ww.overrideWet = objMobJellyRed; ww.canLion = false;
		ww.mobList = [0];
		wmap("ppppppppp....~~");
		wmap("pppp........~~~");
		wmap("pp..........~~~");
		wmap("............~~~");
		wmap("............~~~");
		wmap("..........~~~~~");
		wmap(".........~~~~~~");
		wmap("........~~~~~~~");
		wmap("......~~~~~///~");
		wmap("~~~~~~~~~~./=/~");
		wmap("~~~~~~~~~~....~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	if(xxx == 18 && yyy == 8){
		biome(Zone.beach);
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp....p.....~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("p///........~~~");
		wmap("p/=/........~~~");
		wmap("pp....p.....~~~");
		wmap("pp..........~~~");
		wmap("ppp.........~~~");
		wmap("pppppp.......~~");
		wmap("ppppppppp....~~");
	}
	
	if(xxx == 18 && yyy == 7){
		biome(Zone.beach);
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
	}
	
	if(xxx == 18 && yyy == 6){
		biome(Zone.beach);
		ww.secBlock = imgRockBrownSand; ww.secX = 7; ww.secY = 2; ww.secType = Sec.push;
		ww.pushableList = [{a:7, b:2}];
		wmap("pp##########~~~");
		wmap("pp###...####~~~");
		wmap("%p.#...=..#.~~~");
		wmap("pp...#......~~~");
		wmap("pp..........~~~");
		wmap("............~~~");
		wmap("............~~~");
		wmap("%p..........~~~");
		wmap("pp%.........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
		wmap("pp..........~~~");
	}
	
	
	
	
	if(xxx == 9 && yyy == 9){
		biome(Zone.beach);
		wmap("ppppppppppppppp");
		wmap("pp...........pp");
		wmap("p.............p");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("~~~.........~~~");
		wmap("~~~~~......~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	if(xxx == 8 && yyy == 9){
		biome(Zone.beach);
		ww.mobList = [4, objMobCrab, objMobCrab, objMobCrab, objMobCrab];
		wmap("/..........pppp");
		wmap("/..........pppp");
		wmap("/........pppppp");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("............~~~");
		wmap("............~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	if(xxx == 7 && yyy == 9){
		biome(Zone.beach);
		ww.mobList = [4, objMobCrab, objMobCrab, objMobCrab, objMobCrab];
		wmap("pppppp...ppp///");
		wmap("pppppp...pppp//");
		wmap("pppppp...pppp//");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("~~~............");
		wmap("~~~............");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	if(xxx == 6 && yyy == 9){
		biome(Zone.beach);
		ww.canLion = false;
		//if(!pc.eventTrigger[Event.gotMPShell]){ ww.mobList = [1, objMobCrabBoss]; }
		ww.mobList = [1, objMobCrabBoss];
		wmap("~~ppppppppppppp");
		wmap("~~ppppppppppppp");
		wmap("~~ppppppppppppp");
		wmap("~~.............");
		wmap("~~.............");
		wmap("~~.............");
		wmap("~~~............");
		wmap("~~~~~~~........");
		wmap("~~~~~~~~~~.....");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}

}