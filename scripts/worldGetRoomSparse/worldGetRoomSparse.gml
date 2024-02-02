function worldGetRoomSparse(xxx, yyy){
	
	if(xxx == 6 && yyy == 5){
		biome(Zone.sparse);
		ww.secBlock = imgRockBrownGrass; ww.secX = 7; ww.secY = 6; ww.secType = Sec.push;
		ww.pushableList = [{a:7, b:6}];
		wmap("#########ssss##");
		wmap("##s..ss...s..##");
		wmap("...s.....s.....");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("......r=.......");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 6 && yyy == 6){
		biome(Zone.sparse);
		ww.secBlock = imgRockBrownGrass; ww.secX = 7; ww.secY = 7; ww.secType = Sec.push;
		ww.pushableList = [{a:7, b:7}];
		wmap("##...........##");
		wmap("##...........##");
		wmap("...............");
		wmap("...............");
		wmap("##.............");
		wmap("##.............");
		wmap("##.............");
		wmap("##.....=.......");
		wmap("##.............");
		wmap("##.............");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 6 && yyy == 7){
		biome(Zone.sparse);
		ww.secBlock = imgBushGrass; ww.secX = 8; ww.secY = 5; ww.secType = Sec.burn;
		wmap("##...........##");
		wmap("##...........##");
		wmap("~~.............");
		wmap("~~.............");
		wmap("~~.............");
		wmap("~~......=......");
		wmap("~~.............");
		wmap("~~.............");
		wmap("~~.............");
		wmap("~~.............");
		wmap("~~~~~~~...~~~~~");
		wmap("~~~~~~~.~~~~~~~");
	}
	
	if(xxx == 6 && yyy == 8){
		biome(Zone.sparse);
		ww.mobList = [1, objMobWormBoss];
		ww.canLion = false;
		wmap("~~~~~~~.~~~~~~~");
		wmap("~~~~~...~~~~~~~");
		wmap("~.............~");
		wmap("~.............~");
		wmap("~.............~");
		wmap("~.............~");
		wmap("~.............~");
		wmap("~.............~");
		wmap("~.............~");
		wmap("~.............~");
		wmap("~~...........~~");
		wmap("~~~~~~~~~~~~~~~");
	}
	
	
	if(xxx == 7 && yyy == 5){
		biome(Zone.sparse);
		ww.secBlock = imgRockBrownGrass; ww.secX = 7; ww.secY = 7; ww.secType = Sec.push;
		ww.pushableList = [{a:7, b:7}];
		wmap("##ssss#########");
		wmap("##s..ssssss..##");
		wmap("...s..ss...s..#");
		wmap("..............#");
		wmap("..............#");
		wmap("..............#");
		wmap("..............#");
		wmap(".......=......#");
		wmap("..............#");
		wmap("..............#");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 7 && yyy == 6){
		biome(Zone.sparse);
		ww.secBlock = imgBushRedGrass; ww.secX = 8; ww.secY = 7; ww.secType = Sec.burn;
		wmap("##...........##");
		wmap("##...........##");
		wmap("...............");
		wmap("........%......");
		wmap(".....r%%r......");
		wmap(".....%..%......");
		wmap("........r.%....");
		wmap("...%....=rr....");
		wmap("...............");
		wmap("......r........");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 7 && yyy == 7){
		biome(Zone.sparse);
		wmap("##...........##");
		wmap("##...........##");
		wmap("..............#");
		wmap("..............#");
		wmap(".............##");
		wmap(".....////....%#");
		wmap("...../=//.....#");
		wmap("..............#");
		wmap("..............#");
		wmap(".............%#");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 7 && yyy == 8){
		biome(Zone.sparse);
		ww.secBlock = imgPushBlockGrass; ww.secX = 13; ww.secY = 6;
		wmap("##...........##");
		wmap("##...........##");
		wmap("~.............#");
		wmap("~.............#");
		wmap("~..........[[[#");
		wmap("~..........[..#");
		wmap("~..........[.=#");
		wmap("~..........[..#");
		wmap("~..........[[[#");
		wmap("~.............#");
		wmap("~#...........##");
		wmap("~#####...######");
	}
	
	
	
	
	if(xxx == 8 && yyy == 6){
		biome(Zone.sparse);
		wmap("##////////#####");
		wmap("##...........##");
		wmap("............../");
		wmap("......TTTTT.../");
		wmap("......PPPPP.../");
		wmap("......MM=MM.../");
		wmap("............../");
		wmap("............../");
		wmap("............../");
		wmap("............../");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}