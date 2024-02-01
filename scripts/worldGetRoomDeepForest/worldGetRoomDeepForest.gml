function worldGetRoomDeepForest(xxx, yyy){
	//ww.secBlock = imgBushGrass; ww.secX = 10; ww.secY = 2; ww.secType = Sec.burn;
	
	if(xxx == 13 && yyy == 2){
		biome(Zone.deepForest);
		wmap("%%%%%%...%%%%%%");
		wmap("%%...........%%");
		wmap("%.......%%.....");
		wmap("%.......%%%....");
		wmap("%..............");
		wmap("...............");
		wmap(".....%%%%......");
		wmap("%.....%%%.....%");
		wmap("%.............%");
		wmap("%.............%");
		wmap("%%...........%%");
		wmap("%%%%%..%..%%%%%");
	}
	
	
	
	if(xxx == 14 && yyy == 2){
		biome(Zone.deepForest);
		ww.secBlock = imgBushDeepGrass; ww.secX = 7; ww.secY = 6; ww.secType = Sec.burn;
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%%%%%%%%%%%%%%");
		wmap("....%%%%%%%%...");
		wmap("...............");
		wmap("...............");
		wmap("......%%%......");
		wmap("......%=%......");
		wmap("%..............");
		wmap("%..............");
		wmap("%..%%%%%%%%%...");
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%%%%%%%%%%%%%%");
	}
	
	
	
	if(xxx == 15 && yyy == 2){
		biome(Zone.deepForest);
		ww.secBlock = imgBushDeepGrass; ww.secX = 9; ww.secY = 4; ww.secType = Sec.burn;
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%%%%%%%%%%%%%%");
		wmap("...............");
		wmap(".........%%....");
		wmap(".........=%....");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("......%%.......");
		wmap("......%%.......");
		wmap("%%...........%%");
		wmap("%%...........%%");
	}
	
	if(xxx == 15 && yyy == 3){
		biome(Zone.deepForest);
		ww.secBlock = imgBushDeepGrass; ww.secX = 10; ww.secY = 9; ww.secType = Sec.burn;
		wmap("%%...........%%");
		wmap("%%...........%%");
		wmap("%..............");
		wmap("%..............");
		wmap("%..............");
		wmap("%%.............");
		wmap("...............");
		wmap("...............");
		wmap("%..............");
		wmap("%%%......%=%...");
		wmap("%%%%%%%%...%%%%");
		wmap("%%%%%%%%%%%%%%%");
	}
	
	
	
	
	if(xxx == 16 && yyy == 2){
		biome(Zone.deepForest);
		ww.secBlock = imgRockBrownGrassDeep; ww.secX = 7; ww.secY = 6; ww.secType = Sec.push;
		ww.pushableList = [{a:7, b:5},{a:7, b:6}];
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%%%%%%%%%%%%%%");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap(".......r.......");
		wmap(".......=.......");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%%%%%%%%%%%%%%");
	}
	
	if(xxx == 16 && yyy == 3){
		biome(Zone.deepForest);
		ww.secBlock = imgRockWallGrass; ww.secX = 7; ww.secY = 1; ww.secType = Sec.bomb;
		wmap("%%%//////////%%");
		wmap("%%%%%//=////%%%");
		wmap("........///....");
		wmap(".......///.....");
		wmap(".......////....");
		wmap("......///%.....");
		wmap("....../////....");
		wmap(".......///.....");
		wmap("......///......");
		wmap("......//.......");
		wmap("%%...........%%");
		wmap("%%...........%%");
	}
	
	if(xxx == 16 && yyy == 4){ // star spot
		biome(Zone.deepForest);
		wmap("%%...........%%");
		wmap("%%...........%%");
		wmap("%////.........%");
		wmap("%//=/.........%");
		wmap("%.............%");
		wmap("%.........%%%%%");
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%%%%%...s..s.%");
		wmap("%.........sss.%");
		wmap("%.......s.sss.%");
		wmap("%%........ss.%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 16 && yyy == 5){
		biome(Zone.deepForest);
		wmap("%%%%%%...%%%%%%");
		wmap("%%...........%%");
		wmap("%..............");
		wmap("%%.............");
		wmap("%%.............");
		wmap("%%%%%%%%%%...%%");
		wmap("%%%%....%%%%%%%");
		wmap("%%.............");
		wmap("%..............");
		wmap("%..............");
		wmap("%%...........%%");
		wmap("%%%%.......%%%%");
	}
	
	
	
	if(xxx == 17 && yyy == 2){
		biome(Zone.deepForest);
		ww.pushableList = [{a:6, b:7}];
		wmap("%%%%jj%%%%%%%%%");
		wmap("%%%%jjj.%%%%%%%");
		wmap("....jj.%%%%%%%%");
		wmap("...j.jj..%%%%%%");
		wmap("...........%%%%");
		wmap("...........%%%%");
		wmap("............%%%");
		wmap("......r......%%");
		wmap("............%%%");
		wmap("............%%%");
		wmap("%%...........%%");
		wmap("%%...........%%");
	}
	
	if(xxx == 17 && yyy == 3){
		biome(Zone.deepForest);
		ww.secBlock = imgBushDeepGrass; ww.secX = 13; ww.secY = 1; ww.secType = Sec.burn;
		wmap("%%...........%%");
		wmap("%%...........=%");
		wmap("...............");
		wmap("...............");
		wmap("......%%%......");
		wmap("....%%%%%%.....");
		wmap(".....%%%%%%....");
		wmap(".......%%%.....");
		wmap("...............");
		wmap("..%%...........");
		wmap("%%%..........%%");
		wmap("%%...........%%");
	}
	
	if(xxx == 17 && yyy == 4){
		biome(Zone.deepForest);
		ww.pushableList = [{a:9, b:2}, {a:5, b:5}, {a:12, b:5}, {a:2, b:6}, {a:6, b:9}, {a:10, b:9}];
		wmap("%%...........%%");
		wmap("%%...........%%");
		wmap("%........r....%");
		wmap("%..%%.........%");
		wmap("%...%..%...%..%");
		wmap("%...%r.%...%r.%");
		wmap("%.r.%..%%..%..%");
		wmap("%...%...%..%..%");
		wmap("%...%...%..%..%");
		wmap("%...%.r.%.r...%");
		wmap("%%...........%%");
		wmap("%%........%%%%%");
	}
	
	if(xxx == 17 && yyy == 5){
		biome(Zone.deepForest);
		wmap("%%........%%%%%");
		wmap("%%........%%%%%");
		wmap("..........%%...");
		wmap("...............");
		wmap("...............");
		wmap("%%.............");
		wmap("%%.............");
		wmap("...............");
		wmap("........%%.....");
		wmap("...............");
		wmap("%%...........%%");
		wmap("%%%%%%%%%%%%%%%");
	}
	
	
	
	
	
	
	
	if(xxx == 18 && yyy == 3){
		biome(Zone.deepForest);
		wmap("%%%%%%%%%%%~~~~");
		wmap("%%%%%%%%%%%%%~~");
		wmap("....%%%%%%%%%%~");
		wmap(".........%=%%%%");
		wmap(".............%%");
		wmap(".............%%");
		wmap("............%%%");
		wmap("............%%%");
		wmap("............%%%");
		wmap("............%%%");
		wmap("%%...........%%");
		wmap("%%...........%%");
	}
	
	if(xxx == 18 && yyy == 4){
		biome(Zone.deepForest);
		ww.secX = 6; ww.secY = 4;
		wmap("%%...........%%");
		wmap("%%...........%%");
		wmap("%.....%%......%");
		wmap("%....~~~~~....%");
		wmap("%...~~~~~~~~%%%");
		wmap("%....~~~~~~....");
		wmap("%%....~~~......");
		wmap("%%%..~~~~~....%");
		wmap("%.%%~~~~~~~...%");
		wmap("%......~~~....%");
		wmap("%%...........%%");
		wmap("%%...........%%");
		if(pc.x < ww.roomWidth - 64){
			ww.bmap[14, 5] = imgVaultDoor; ww.bmap[14, 6] = imgBlank;
		}
	}
	
	if(xxx == 18 && yyy == 5){
		biome(Zone.deepForest);
		ww.secBlock = imgBushDeepGrass; ww.secX = 7; ww.secY = 7; ww.secType = Sec.burn;
		wmap("%%...........%%");
		wmap("%%%..........%%");
		wmap(".%%..........%%");
		wmap(".............%%");
		wmap(".............%%");
		wmap("......%%%.....%");
		wmap("......%%%.....%");
		wmap("...%..%=%.....%");
		wmap(".......j......%");
		wmap("..............%");
		wmap("%%...........%%");
		wmap("%%%%%%%%%%%%%%%");
	}
	
	

}