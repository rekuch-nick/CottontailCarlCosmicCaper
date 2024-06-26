function worldGetRoomForest(xxx, yyy){
	
	if(xxx == 8 && yyy == 4){
		biome(Zone.forest);
		ww.secBlock = imgBushGrass; ww.secX = 12; ww.secY = 3; ww.secType = Sec.burn;
		wmap("%%%%%%...%%%%%%");
		wmap("%%...........%%");
		wmap("%%%.........%%%");
		wmap("%%..........=%%");
		wmap("%%...........%%");
		wmap("%%....B .......");
		wmap("B ....  .......");
		wmap("B ..........%%%");
		wmap("  ..........%%%");
		wmap("%%..........%%%");
		wmap("%%..%....%%%%%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 8 && yyy == 5){
		biome(Zone.forest);
		ww.secBlock = imgBushGrass; ww.secX = 10; ww.secY = 2; ww.secType = Sec.burn;
		ww.mobList = [6, objMobMossman2, objMobMossman2];
		wmap("%%%%%%...%%%%%%");
		wmap("%%%%.........%%");
		wmap("%%%.......=..%%");
		wmap("%%..%%.......%%");
		wmap("%%..........%%%");
		wmap("%%.............");
		wmap("%%....%%.......");
		wmap("%%%.........%%%");
		wmap("%%%........%%B ");
		wmap("%%%.....%%%%%  ");
		wmap("B %%%%%%%%B %%%");
		wmap("  %%%%%%%%  %%%");
	}
	
	
	
	
	
	if(xxx == 9 && yyy == 2){
		biome(Zone.forest);
		ww.secBlock = imgBushGrass; ww.secX = 13; ww.secY = 4; ww.secType = Sec.burn;
		ww.canLion = false; ww.mobList = [1, objMobMossmanBoss];
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%B %........%%");
		wmap("%%  %........B ");
		wmap("%%%%.........  ");
		wmap("%%...........=%");
		wmap("%%.............");
		wmap("B .............");
		wmap("  ...........%%");
		wmap("%%...........%%");
		wmap("%%...........%%");
		wmap("%%..........%B ");
		wmap("%%%%%%...%%%%  ");
	}
	
	if(xxx == 9 && yyy == 3){
		biome(Zone.forest);
		ww.secBlock = imgBushGrass; ww.secX = 11; ww.secY = 6; ww.secType = Sec.burn;
		wmap("%%%%%%...%%%%%%");
		wmap("%%...........%%");
		wmap("%.............%");
		wmap("%....%.......%%");
		wmap("%..........%%%%");
		wmap(".........%%%%%%");
		wmap("..........%=%%%");
		wmap("%............%%");
		wmap("%.......%.....%");
		wmap("%............%%");
		wmap("%...%%.......%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 9 && yyy == 4){
		biome(Zone.forest);
		ww.secBlock = imgBushGrass; ww.secX = 8; ww.secY = 5; ww.secType = Sec.burn;
		ww.mobList = [6, objMobMossman2, objMobMossman2];
		ww.canLion = false;
		wmap("%%%%%%...%%%%%%");
		wmap("%%..........%%%");
		wmap("%%..........%%%");
		wmap("%%...%%......%%");
		wmap("%%...........%%");
		wmap("........=%.....");
		wmap("...............");
		wmap("%%...........%%");
		wmap("%%...%%.....%%%");
		wmap("%%.........%%%%");
		wmap("%%.........%%%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 9 && yyy == 5){
		biome(Zone.forest);
		ww.secBlock = imgBushGrass; ww.secX = 1; ww.secY = 8; ww.secType = Sec.burn;
		wmap("%%%%%%...%%%%%%");
		wmap("%%...........%%");
		wmap("%%..%%.......B ");
		wmap("%%.......%%..  ");
		wmap("%%...........%%");
		wmap(".....%%........");
		wmap("...............");
		wmap("%%..%%.......%%");
		wmap("%=.......%...%%");
		wmap("%........%%..%%");
		wmap("B ..B .......%%");
		wmap("  %%  ...%%%%%%");
	}
	
	if(xxx == 9 && yyy == 6){
		biome(Zone.forest);
		ww.secBlock = imgBushGrass; ww.secX = 10; ww.secY = 3; ww.secType = Sec.burn;
		wmap("%%%%%%...%%%B %");
		wmap("%%%.......%%  %");
		wmap("%%.......%%%%%%");
		wmap("%%......%%=..%%");
		wmap("%%....%%%....%%");
		wmap("%.....%%.......");
		wmap("%......%.......");
		wmap("%%.....%%....%%");
		wmap("%%%.....%....%%");
		wmap("%%%..........%%");
		wmap("B %%......%%B %");
		wmap("  %%%%%%%%%%  %");
	}
	
	
	
	
	if(xxx == 10 && yyy == 2){
		biome(Zone.forest);
		ww.secBlock = imgBushRedGrass; ww.secX = 6; ww.secY = 6; ww.secType = Sec.burn;
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%B %%%%%%B %%%");
		wmap("%% B %%%%%  %%%");
		wmap("%%%  %%%%%%%%%%");
		wmap("%%........%%%%%");
		wmap(".............%%");
		wmap("......=......%%");
		wmap("%%...........%%");
		wmap("%%%.........%%%");
		wmap("%%...........%%");
		wmap("%%...........%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 10 && yyy == 3){
		biome(Zone.forest);
		wmap("%%%%%%...%%%%%%");
		wmap("%%...........%%");
		wmap("%%..%%%.%%...%%");
		wmap("%%%%%%%.%%%..%%");
		wmap("%%..%%%.%%%%%%%");
		wmap("%%.....[.......");
		wmap("%%..%%%.%%%....");
		wmap("%%..%%%.%%%..%%");
		wmap("%%...%%.%=%B %%");
		wmap("%%...%.....  %%");
		wmap("%%...%.......%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 10 && yyy == 4){
		biome(Zone.forest);
		ww.secBlock = imgBushRedGrass; ww.secX = 3; ww.secY = 1; ww.secType = Sec.burn;
		wmap("%%%%%%...%%%%%%");
		wmap("%%%=%%.......%%");
		wmap("%%%..........%%");
		wmap("B .....[.....%%");
		wmap("  ...........%%");
		wmap("...............");
		wmap("...............");
		wmap("%%...........%%");
		wmap("%%%B %%%...%%%%");
		wmap("%%% B %%%%B %%%");
		wmap("%%%%  %B %  %%%");
		wmap("%%%%%%%  %%%%%%");
	}
	
	if(xxx == 10 && yyy == 5){
		biome(Zone.forest);
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%%%B %%%%%#%%%");
		wmap("%%%#  %%%%%B %%");
		wmap("%%%%%%%....  %%");
		wmap("%%...........%%");
		wmap("...............");
		wmap("...............");
		wmap("%%...........%%");
		wmap("%%...........%%");
		wmap("%%...........%%");
		wmap("%%%........%%B ");
		wmap("%%%%%%...%%%%  ");
	}
	
	if(xxx == 10 && yyy == 6){
		biome(Zone.forest);
		ww.secBlock = imgBushGrass; ww.secX = 8; ww.secY = 9; ww.secType = Sec.burn;
		wmap("%%%%%%...%%%B %");
		wmap("%B %%.....%% B ");
		wmap("%  %%...%%%%%  ");
		wmap("%%...........%%");
		wmap("%%..%........%%");
		wmap("........%...%%%");
		wmap("............%B ");
		wmap("%%B %.......%  ");
		wmap("%%  %%%%.....%%");
		wmap("%%%..........%%");
		wmap("%%%......%%..%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	
	
	
	if(xxx == 11 && yyy == 3){
		biome(Zone.forest);
		wmap("%%%%%%...%%%%%%");
		wmap("%%.......[...%%");
		wmap("%%.......[...%%");
		wmap("%%%%%%%%%%%..%%");
		wmap("%%........%..%%");
		wmap("..........%..%%");
		wmap("......[%%%%[[%%");
		wmap("%%...%....%..%%");
		wmap("%%...%....%..%%");
		wmap("%%.%%%.......%%");
		wmap("%%..[........%%");
		wmap("%%%%%%...%%%%%%");
	}
	
	if(xxx == 11 && yyy == 4){
		biome(Zone.forest);
		ww.mobList = [6, objMobMossman2, objMobMossman2, objMobMossman, objMobMossman, objMobMossman, objMobMossman];
		wmap("%%%%%%...%%%%%%");
		wmap("%%...%.......%%");
		wmap("%%...........%%");
		wmap("%%...........%%");
		wmap("%%%%.......[[%%");
		wmap("...%%%%%%%%..%%");
		wmap(".....[.......%%");
		wmap("%%%%%...DDDDD%%");
		wmap("%%.....DD.D=D%%");
		wmap("%%....DD....D%%");
		wmap("%%%%%%DD..DD.%%");
		wmap("%%%%%%%%%%%%%%%");
	}
	
	
	if(xxx == 11 && yyy == 5){
		biome(Zone.forest);
		ww.secBlock = imgBushRedGrass; ww.secX = 7; ww.secY = 8; ww.secType = Sec.burn;
		wmap("%%%%%%%%%%%%%%%");
		wmap("%%%%%......%%%%");
		wmap("%%..........%B ");
		wmap("%%..........%  ");
		wmap("%%....B ....%%%");
		wmap(".....%  %....%%");
		wmap(".....%%%%%....%");
		wmap("%%....%%%%...%%");
		wmap("%%.....=%....%%");
		wmap("%%%..........%%");
		wmap("B %.........%%%");
		wmap("  %%%%...%%%%%%");
	}
	
	

	
	
	
	
	
	
}