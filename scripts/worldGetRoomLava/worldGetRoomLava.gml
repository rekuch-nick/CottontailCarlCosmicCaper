function worldGetRoomLava(xxx, yyy){
	
	if(xxx == 2 && yyy == 0){
		biome(Zone.volcano);
		ww.mobList = [1, objMobElementalBoss];
		ww.canLion = false;
		wmap("//LL///////////");
		wmap("//LL///////////");
		wmap("~~~~~..........");
		wmap("~~~~...........");
		wmap("~~.............");
		wmap("~~.............");
		wmap("~~.............");
		wmap("~~.............");
		wmap("~~.............");
		wmap("~~~~~..........");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	
	
	if(xxx == 3 && yyy == 0){
		biome(Zone.volcano);
		wmap("/L//////LL/////");
		wmap("/L//////LL/////");
		wmap("........LL.....");
		wmap(".....~..~~.....");
		wmap("....~~~~~~~~...");
		wmap("....~..=.~~~...");
		wmap("...~~.....~....");
		wmap("...~~.....~....");
		wmap("....~...~~~....");
		wmap("....~~~~~~~....");
		wmap("~~...........~~");
		wmap("~~...........~~");
	}
	
	if(xxx == 3 && yyy == 1){
		biome(Zone.volcano);
		ww.secBlock = imgRockDirtLight; ww.secX = 3; ww.secY = 8; ww.secType = Sec.push;
		ww.pushableList = [{a:3, b:8}];
		wmap("~~...........~~");
		wmap("~~...........~~");
		wmap("/~.............");
		wmap("//.............");
		wmap("//.......##....");
		wmap("//#............");
		wmap("//##...........");
		wmap("#####..........");
		wmap("##.=...........");
		wmap("/##.....##.....");
		wmap("//...........##");
		wmap("//...........##");
		ww.fmap[2, 8] = imgRockDirtLight;
	}
	
	if(xxx == 3 && yyy == 2){
		biome(Zone.volcano);
		wmap("//...........##");
		wmap("//...........##");
		wmap("//.............");
		wmap("/L.............");
		wmap("/L.............");
		wmap("LL.............");
		wmap("LL.............");
		wmap("~~~........//..");
		wmap("##~~~~~~~..L/..");
		wmap("##~.....~~~~//.");
		wmap("##~........~~/#");
		wmap("##~~~~#..#~~~##");
	}
	
	
	
	
	if(xxx == 4 && yyy == 0){
		biome(Zone.volcano);
		wmap("////~~~~~~/////");
		wmap("/#.....~~~~~~#/");
		wmap(".......~~......");
		wmap("...............");
		wmap(".....~TTTT.....");
		wmap("....~~PPPP~~...");
		wmap("...~~~P=PP.~~..");
		wmap("...~~~~....~~..");
		wmap("....~....~~~...");
		wmap("....~~..~~~....");
		wmap("~~...........~~");
		wmap("~~...........~~");
	}
	
	if(xxx == 4 && yyy == 1){
		biome(Zone.volcano);
		ww.secBlock = imgRockWallGreyDirt; ww.secX = 10; ww.secY = 6; ww.secType = Sec.bomb;
		wmap("~~...........##");
		wmap("~~...........##");
		wmap(".~~............");
		wmap("...............");
		wmap("........//.....");
		wmap("......./L//....");
		wmap("......~/~~=////");
		wmap("......~~~......");
		wmap("...............");
		wmap("...............");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 4 && yyy == 2){
		biome(Zone.volcano);
		ww.mobList = [1, objMobWindManBoss];
		ww.canLion = false;
		wmap("##...........//");
		wmap("##...........//");
		wmap(".............//");
		wmap(".............LL");
		wmap(".............L/");
		wmap(".............L/");
		wmap(".........~~..L/");
		wmap("..........~~.~/");
		wmap("........~.~~~~/");
		wmap("......~.~~~~~~/");
		wmap("//////~~~~~~~~/");
		wmap("///////////////");
	}
	
	
	
	
	
	if(xxx == 5 && yyy == 0){
		biome(Zone.volcano);
		ww.secX = 5; ww.secY = 5;
		wmap("///////////////");
		wmap("///////////////");
		wmap("...............");
		wmap("...............");
		wmap(".....~~........");
		wmap("...~~~~........");
		wmap(".....~~~.......");
		wmap("...............");
		wmap(".............~~");
		wmap("..........~~~~~");
		wmap("~~.........~~~~");
		wmap("~~...........~~");
	}
	
	if(xxx == 5 && yyy == 1){
		biome(Zone.volcano);
		wmap("##...........~~");
		wmap("##...........~~");
		wmap("............./~");
		wmap("............./~");
		wmap(".............~~");
		wmap(".......////////");
		wmap("/////////=/////");
		wmap("............///");
		wmap(".............//");
		wmap(".............//");
		wmap("###############");
		wmap("///////########");
	}
	
	if(xxx == 6 && yyy == 0){
		biome(Zone.volcano);
		ww.secBlock = imgRockWallGreyDirt; ww.secX = 6; ww.secY = 2; ww.secType = Sec.bomb;
		wmap("///////////L///");
		wmap("///////////L///");
		wmap("....//=////L///");
		wmap("........///L///");
		wmap("..........~~~~~");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	
	if(xxx == 7 && yyy == 0){
		biome(Zone.volcano);
		ww.secBlock = imgRockWallGreyDirt; ww.secX = 6; ww.secY = 2; ww.secType = Sec.bomb;
		wmap("//L//////L/////");
		wmap("/LL//////L/////");
		wmap("/L////=//~~..//");
		wmap("/L///........./");
		wmap("~~~............");
		wmap(".......#.......");
		wmap("...............");
		wmap("..........#....");
		wmap("............../");
		wmap("~~~~~~~~~~~~///");
		wmap("~~~~~~~~~~~~~//");
		wmap("~~~~~~~~~~~////");
	}
	
	
	

}