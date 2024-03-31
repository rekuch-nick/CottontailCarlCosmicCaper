function worldGetRoomGrass(xxx, yyy){
	
	
	
	if(xxx == 8 && yyy == 7){ 
		biome(Zone.grass);
		ww.mobList = [24, objMob, objMob, objMob, objMob, objMob, objMob];
		ww.canLion = false;
		wmap("##...........##");
		wmap("#.............#");
		wmap("#.............#");
		wmap("#.............#");
		wmap("#.............#");
		wmap("#..............");
		wmap("#..............");
		wmap("#.............#");
		wmap("#.............#");
		wmap("#.............#");
		wmap("#.............#");
		wmap("##...........##");
	}
	
	if(xxx == 8 && yyy == 8){ 
		biome(Zone.grass);
		wmap("##...........##");
		wmap("#.............#");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("#..............");
		wmap("#...#####......");
		wmap("#...p///#......");
		wmap("##pp#/=/##.....");
		wmap("#ssssssss#p....");
		wmap("#ssssssss######");
		wmap("#ssssssssss#pp#");
	}
	
	if(xxx == 9 && yyy == 7){ // first shop 
		biome(Zone.grass);
		wmap("##%%###########");
		wmap("#........%////#");
		wmap("#......%%%//=/#");
		wmap("#.....%%......#");
		wmap("#.............#");
		wmap("...............");
		wmap("........%......");
		wmap("#.......%.....#");
		wmap("#......%%%....#");
		wmap("#......%......#");
		wmap("#.....%%%%%...#");
		wmap("##%%###########");
	}
	
	if(xxx == 9 && yyy == 8){ 
		biome(Zone.grass);
		ww.canLion = false;
		ww.mobList = [1, objMobSlimeBoss];
		wmap("##%%###########");
		wmap("#.............#");
		wmap("..............#");
		wmap("..............#");
		wmap("..............#");
		wmap("..............#");
		wmap("..............#");
		wmap("..............#");
		wmap("..............#");
		wmap("..............#");
		wmap("#.............#");
		wmap("###############");
	}
	
	
	
	
	if(xxx == 10 && yyy == 7){ // start screen
		biome(Zone.grass);
		ww.noMobs = true; ww.canLion = false;
		wmap("##%%%%...%%%%##");
		wmap("##%%%.....%%%##");
		wmap("##%%%...%%%%###");
		wmap("###.%%...%...##");
		wmap("##.........%.##");
		wmap("...............");
		wmap(".....////......");
		wmap("##...//=/....##");
		wmap("##...........##");
		wmap("###....W.....##");
		wmap("###..........##");
		wmap("##...........##");
	}
	
	
	if(xxx == 10 && yyy == 8){ // path to beach
		biome(Zone.grass);
		ww.secBlock = imgBushGrass; ww.secX = 1; ww.secY = 4; ww.secType = Sec.burn;
		
		wmap("##...........##");
		wmap("##...........##");
		wmap("##............#");
		wmap("###...........#");
		wmap("#=#...........#");
		wmap("#.............#");
		wmap("#............##");
		wmap("##......s....s#");
		wmap("###.s..s..s..s#");
		wmap("##.s.ss..s.s.##");
		wmap("##sssssssss####");
		wmap("##sssssssss####");
	}
	
	
	if(xxx == 11 && yyy == 6){  // pond
		biome(Zone.grass);
		ww.canLion = false;
		ww.mobList = [4, objMobBearBoss, objMobBear, objMobBear, objMobBear];
		ww.secX = 8; ww.secY = 6;
		wmap("##%%%%...%%%%##");
		wmap("#..%%....%%..%#");
		wmap("#..............");
		wmap("#.......~~~....");
		wmap("#......~~~~~...");
		wmap("#....~~~~~~~...");
		wmap("#...~~~~~~~~...");
		wmap("#...~~~~~~~~...");
		wmap("#.....~~~~~....");
		wmap("#......~~......");
		wmap("#.............#");
		wmap("####////###..##");
	}
	
	if(xxx == 11 && yyy == 7){ // east of start, open up
		biome(Zone.grass);
		ww.secBlock = imgRockBrownGrass; ww.secX = 11; ww.secY = 1; ww.secType = Sec.bomb;
		wmap("####////###..##");
		wmap("####/=//....r##");
		wmap("##.............");
		wmap("##.............");
		wmap("##.............");
		wmap("...............");
		wmap("...............");
		wmap("##.............");
		wmap("##.............");
		wmap("###............");
		wmap("###..........##");
		wmap("##...........##");
	}
	
	
	if(xxx == 11 && yyy == 8){
		biome(Zone.grass);
		ww.secBlock = imgRockBrownGrass; ww.secX = 1; ww.secY = 5; ww.secType = Sec.bomb;
		wmap("##...........##");
		wmap("##...........%#");
		wmap("##.............");
		wmap("##.............");
		wmap("r#.............");
		wmap("r=.............");
		wmap("#..............");
		wmap("##.............");
		wmap("##.............");
		wmap("####..#####....");
		wmap("######%%#######");
		wmap("###%%%%%%%%%%##");
	}
	
	
	if(xxx == 12 && yyy == 6){ 
		biome(Zone.grass);
		ww.secBlock = imgBushGrass; ww.secX = 10; ww.secY = 4; ww.secType = Sec.burn;
		wmap("#########...###");
		wmap("#.......#.....#");
		wmap("........##.....");
		wmap(".........###...");
		wmap("..........=####");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("#.............#");
		wmap("##...........##");
	}
	
	if(xxx == 12 && yyy == 7){ 
		biome(Zone.grass);
		ww.secBlock = imgRockBrownGrass; ww.secX = 10; ww.secY = 2; ww.secType = Sec.bomb;
		wmap("##...........##");
		wmap("#.............#");
		wmap("..........=....");
		wmap("...............");
		wmap("....#..........");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap(".........#.....");
		wmap("...............");
		wmap("#............%%");
		wmap("##...........%%");
	}
	
	if(xxx == 12 && yyy == 8){ 
		biome(Zone.grass);
		ww.secBlock = imgBushRedGrass; ww.secX = 9; ww.secY = 5; ww.secType = Sec.burn;
		wmap("##...........%%");
		wmap("#............%%");
		wmap(".........%....#");
		wmap("..............#");
		wmap("..............#");
		wmap(".........=....#");
		wmap(".............~~");
		wmap(".............~#");
		wmap(".........%...~#");
		wmap(".............~#");
		wmap("#......~~~~~~~#");
		wmap("#######~~######");
	}
	
	
	
	
	if(xxx == 13 && yyy == 6){ 
		biome(Zone.grass);
		wmap("###############");
		wmap("#.......##////#");
		wmap("........##/=//#");
		wmap("........#.....#");
		wmap("##......####..#");
		wmap(".......[...####");
		wmap("...........####");
		wmap("..........##...");
		wmap("........###....");
		wmap(".........#.....");
		wmap("#........#....#");
		wmap("##.......#...##");
	}
	
	if(xxx == 13 && yyy == 7){ 
		biome(Zone.grass);
		ww.secBlock = imgBushGrass; ww.secX = 10; ww.secY = 9; ww.secType = Sec.burn;
		wmap("##.......#...##");
		wmap("#........#....#");
		wmap(".........#....#");
		wmap("........##....#");
		wmap("........##....#");
		wmap(".......##.....#");
		wmap("......##......#");
		wmap("......[.......#");
		wmap("......[.......#");
		wmap(".....%#...=#..#");
		wmap("%%....#%%..#%.#");
		wmap("%%#############");
	}
	
	
	
	
	
	
	
	
	
	
	

}