function worldGetRoomRedForest(xxx, yyy){
	
	if(xxx == 3 && yyy == 6){
		biome(Zone.redForest);
		ww.secBlock = imgBushGrass; ww.secX = 5; ww.secY = 1; ww.secType = Sec.burn;
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%%%%=...%%..%%");
		wmap("%%%%..........%");
		wmap("%%............%");
		wmap("%..............");
		wmap("%......%%......");
		wmap("%.....%%.......");
		wmap("%%....%%%......");
		wmap("%%%.....%%%...%");
		wmap("%%........%%%%%");
		wmap("%%..........%%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 3 && yyy == 7){
		biome(Zone.redForest);
		ww.secBlock = imgBushRedGrass; ww.secX = 7; ww.secY = 7; ww.secType = Sec.burn;
		wmap("%%%%%%...%%%%%%");
		wmap("%%.........%%%%");
		wmap("%........%%%.%%");
		wmap("%........%%...%");
		wmap("%....%%%%%.....");
		wmap("%....%%%%%%....");
		wmap("%.....%%%%.....");
		wmap("%....%%=%......");
		wmap("%%............%");
		wmap("%%............%");
		wmap("%%........%%%%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 3 && yyy == 8){
		biome(Zone.redForest);
		ww.mobList = [1, objMobWitchBoss];
		ww.canLion = false;
		wmap("%%%%%%...%%%%%%");
		wmap("%%...........%%");
		wmap("%.............%");
		wmap("%.............%");
		wmap("%..............");
		wmap("%..............");
		wmap("%..............");
		wmap("%..............");
		wmap("d.............%");
		wmap("%.............%");
		wmap("d%...........%d");
		wmap("%%dd%d...%%dd%%");
	}
	
	if(xxx == 3 && yyy == 9){
		biome(Zone.redForest);
		ww.noMobs = true; ww.canLion = false;
		wmap("dd%d%d...dd%dd%");
		wmap("d.............d");
		wmap("%.............d");
		wmap("d.............d");
		wmap("d.............d");
		wmap("d.............%");
		wmap("d........s....%");
		wmap("%.ss.sss..ss.s%");
		wmap("ds.sssss..s.s.d");
		wmap("d.s.sssssssss.%");
		wmap("d...sss..ss...%");
		wmap("dddd%ddd%d%dddd");
	}
	
	
	
	
	
	
	
	if(xxx == 4 && yyy == 6){
		biome(Zone.redForest);
		wmap("%%%%%%...%%%%%%");
		wmap("%%.......%...%%");
		wmap("%..............");
		wmap("%......%%......");
		wmap("...%...........");
		wmap("...%.......%...");
		wmap("...........%...");
		wmap(".......%%..%...");
		wmap("%...%......%...");
		wmap("%...%..........");
		wmap("%%%%%........%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 4 && yyy == 7){
		biome(Zone.redForest);
		wmap("%%%%%%...%%%%%%");
		wmap("%%...........%%");
		wmap("%..X.......X..%");
		wmap("%.............%");
		wmap(".....TTTTT.....");
		wmap(".....PPPPP.....");
		wmap(".....PP=PP.....");
		wmap("...............");
		wmap("%..X.......X..%");
		wmap("%.............%");
		wmap("%%...........%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 4 && yyy == 8){
		biome(Zone.redForest);
		ww.secBlock = imgBushRedGrass; ww.secX = 6; ww.secY = 5; ww.secType = Sec.burn;
		wmap("%%%%%%...%%%%%%");
		wmap("%%..........%%%");
		wmap("%.........%%%%%");
		wmap("%.........%%..%");
		wmap("....%%%........");
		wmap(".....%=........");
		wmap(".....%.........");
		wmap(".........%%....");
		wmap("%%.......%%...%");
		wmap("%%%...........%");
		wmap("%%...........%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 4 && yyy == 9){
		biome(Zone.redForest);
		ww.secBlock = imgBushRedGrass; ww.secX = 2; ww.secY = 1; ww.secType = Sec.state;
		ww.pushableList = [{a:3, b:3},{a:7, b:3}];
		wmap("%%%%%%...%%%%%%");
		wmap("%%=%%%...%%%%%%");
		wmap("%.............%");
		wmap("%..]...]...]..%");
		wmap("%..............");
		wmap("%..............");
		wmap("%..].......]...");
		wmap("%..............");
		wmap("%.............%");
		wmap("%..]...]...]..%");
		wmap("%.............%");
		wmap("%%%%%%%%%%%%%%%");
	}
	
	
	
	
	
	
	if(xxx == 5 && yyy == 6){
		biome(Zone.redForest);
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%....%%///..%%");
		wmap("......%%/=/....");
		wmap("...............");
		wmap("....%%.......%%");
		wmap("....%%........%");
		wmap("..............%");
		wmap("..............%");
		wmap("........%%....%");
		wmap("........%%....%");
		wmap("%%...........%%");
		wmap("%%...........%%");
	}
	
	if(xxx == 5 && yyy == 7){
		biome(Zone.redForest);
		ww.overrideWet = objMobJellyRed;
		wmap("%%...........%%");
		wmap("%%...........%%");
		wmap("%............~~");
		wmap("%...........~~~");
		wmap("...........~~~~");
		wmap("...........~~~~");
		wmap("............~~~");
		wmap("............~~~");
		wmap("%...........~~~");
		wmap("%............~~");
		wmap("%%...........%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 5 && yyy == 8){
		biome(Zone.redForest);
		ww.secBlock = imgBushRedGrass; ww.secX = 11; ww.secY = 7; ww.secType = Sec.burn;
		wmap("%%%%%%...%%%%%%");
		wmap("%%%%........%%%");
		wmap("%%%..........%%");
		wmap("%.............%");
		wmap("..............%");
		wmap(".........%%%%%%");
		wmap(".......%%%%%%%%");
		wmap(".........%%=%%%");
		wmap("%...%%........%");
		wmap("%.............%");
		wmap("%%...........%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 5 && yyy == 9){
		biome(Zone.redForest);
		wmap("%%%%%%...%%%%%%");
		wmap("%%%..........%%");
		wmap("%%%%..........%");
		wmap("%%............%");
		wmap("........%%%...%");
		wmap("...../////%%..%");
		wmap(".....//=//%...%");
		wmap("..............%");
		wmap("%............%%");
		wmap("%...%......%%%%");
		wmap("%%..%%......%%%");
		wmap("%%%%%%%%%%%%%%%");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}