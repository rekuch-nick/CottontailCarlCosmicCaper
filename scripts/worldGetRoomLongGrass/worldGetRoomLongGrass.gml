function worldGetRoomLongGrass(xxx, yyy){
	
	
	
	if(xxx == 12 && yyy == 5){
		biome(Zone.longGrass);
		wmap("##...........##");
		wmap("##...........##");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("##...........##");
		wmap("#########...###");
	}
	
	if(xxx == 13 && yyy == 5){
		biome(Zone.longGrass);
		wmap("##...........##");
		wmap("##...........##");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap(".....////......");
		wmap("....%/=//......");
		wmap(".......%.......");
		wmap("...............");
		wmap("...............");
		wmap("##...........##");
		wmap("###############");
	}
	
	if(xxx == 14 && yyy == 5){
		biome(Zone.longGrass);
		ww.mobList = [3, objMobLobberBoss];
		ww.canLion = false;
		wmap("##...........##");
		wmap("##...........##");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 15 && yyy == 5){
		biome(Zone.longGrass);
		wmap("##...........//");
		wmap("##...........//");
		wmap("............../");
		wmap(".......////////");
		wmap(".........//////");
		wmap(".........../=//");
		wmap("............../");
		wmap("............../");
		wmap("............../");
		wmap("............../");
		wmap("##...........#/");
		wmap("####.......####");
	}
	
	
	
	if(xxx == 14 && yyy == 6){
		biome(Zone.longGrass);
		ww.canLion = false;
		ww.mobList = [8, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat];
		ww.secBlock = imgBushSand; ww.secX = 10; ww.secY = 8; ww.secType = Sec.burn;
		wmap("##...........##");
		wmap("##...........##");
		wmap("#.............#");
		wmap("#.............#");
		wmap("#.............#");
		wmap("#.............#");
		wmap("#.............#");
		wmap("..........s...#");
		wmap(".........s=s..#");
		wmap("..........ss..#");
		wmap("##...........##");
		wmap("###############");
	}
	
	if(xxx == 12 && yyy == 4){
		biome(Zone.longGrass);
		ww.overrideWet = objMobJellyRed;
		ww.mobList = [4, objMobHeartBoss, objMobHeart, objMobHeart, objMobHeart];
		ww.canLion = false;
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~....");
		wmap("#...~~~~~......");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 13 && yyy == 4){
		biome(Zone.longGrass);
		ww.secBlock = imgBushGrass; ww.secX = 6; ww.secY = 6; ww.secType = Sec.burn;
		wmap("##...........##");
		wmap("##...........##");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("......bb.......");
		wmap("......=b.......");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 14 && yyy == 4){
		biome(Zone.longGrass);
		wmap("##...........##");
		wmap("##...........##");
		wmap("...............");
		wmap("..../////......");
		wmap("..[[//=/.[.....");
		wmap("..[[....[[.....");
		wmap("..[[[[[[.......");
		wmap("...[.[[[....[..");
		wmap("...............");
		wmap("......[........");
		wmap("##...........##");
		wmap("##...........##");
		ww.fmap[8, 4] = imgRockWallGreyGrass;
	}
	
	if(xxx == 15 && yyy == 4){
		biome(Zone.longGrass);
		wmap("########///////");
		wmap("##.......####//");
		wmap("........///#///");
		wmap("...../////////#");
		wmap("...#//....TTTT/");
		wmap("...#//....P=PP#");
		wmap("....#/........#");
		wmap("....##........#");
		wmap(".....#///+////#");
		wmap(".....#///+/////");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 13 && yyy == 3){
		biome(Zone.longGrass);
		wmap("~~%%%..%..%%%##");
		wmap("~#.%...%...%%##");
		wmap("~..............");
		wmap("~..............");
		wmap("~..............");
		wmap("~..............");
		wmap("~..............");
		wmap("~..............");
		wmap("~..............");
		wmap("~..............");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 14 && yyy == 3){
		biome(Zone.longGrass);
		ww.secBlock = imgBushRedGrass; ww.secX = 13; ww.secY = 2; ww.secType = Sec.burn;
		wmap("###############");
		wmap("##...........##");
		wmap(".............=%");
		wmap("..............%");
		wmap(".............%%");
		wmap(".............%%");
		wmap("...............");
		wmap("...............");
		wmap("..............%");
		wmap(".............%%");
		wmap("##...........##");
		wmap("##...........##");
	}
	

}