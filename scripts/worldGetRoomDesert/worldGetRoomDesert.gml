function worldGetRoomDesert(xxx, yyy){
	
	
	if(xxx == 4 && yyy == 3){
		biome(Zone.desert);
		ww.canLion = false;
		ww.mobList = [4, objMobSandwormCarrot, objMobSandworm, objMobSandworm, objMobSandworm];////
		ww.noFall = true;
		wmap("///////////////");
		wmap("/............./");
		wmap("/............./");
		wmap("............../");
		wmap("............../");
		wmap("/............./");
		wmap("/............./");
		wmap("/............./");
		wmap("/..............");
		wmap("/..............");
		wmap("/............./");
		wmap("///////////////");
	}
	
	if(xxx == 5 && yyy == 2){
		biome(Zone.desert);
		ww.secBlock = imgCactusSand; ww.secX = 4; ww.secY = 3; ww.secType = Sec.burn;
		wmap("///////////////");
		wmap("//...........//");
		wmap("/..............");
		wmap("/...=.....%....");
		wmap("/..............");
		wmap("/......%.......");
		wmap("/..............");
		wmap("/...%......%...");
		wmap("/...%..........");
		wmap("/..............");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	if(xxx == 5 && yyy == 3){
		biome(Zone.desert);
		ww.secBlock = imgCactusSand; ww.secX = 8; ww.secY = 6; ww.secType = Sec.burn;
		wmap("//...........//");
		wmap("/............./");
		wmap("/.%..%..%..%...");
		wmap("/..............");
		wmap("/%.............");
		wmap("/.%..%..%......");
		wmap("/.......=..%...");
		wmap("/..............");
		wmap(".....%.........");
		wmap("....%%..%..%...");
		wmap("/............./");
		wmap("//...........//");
	}
	
	
	if(xxx == 5 && yyy == 4){
		biome(Zone.desert);
		ww.secBlock = imgCactusSand; ww.secX = 7; ww.secY = 3; ww.secType = Sec.burn;
		wmap("//...........//");
		wmap("//...........//");
		wmap("/..............");
		wmap("/.%....=...%...");
		wmap("/..............");
		wmap("/..............");
		wmap("/..............");
		wmap("/..............");
		wmap("/.%....%...%...");
		wmap("/..............");
		wmap("///////////////");
		wmap("///////////////");
	}
	
	
	
	if(xxx == 6 && yyy == 1){
		biome(Zone.desert);
		ww.secBlock = imgCactusSand; ww.secX = 7; ww.secY = 6; ww.secType = Sec.burn;
		wmap("///////////////");
		wmap("//...........//");
		wmap("/..............");
		wmap("/.....%%%......");
		wmap("/...%%%%%%.....");
		wmap("/....%%%%......");
		wmap("/.....%=%......");
		wmap("/..............");
		wmap("/.........%....");
		wmap("/..............");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	if(xxx == 6 && yyy == 2){
		biome(Zone.desert);
		ww.secX = 7; ww.secY = 6;
		wmap("//...........//");
		wmap("/..p......p.../");
		wmap("...............");
		wmap("..p...p~~p.....");
		wmap(".....~~~~~.....");
		wmap(".....~~~~~~p...");
		wmap("....p~~~~~~....");
		wmap("...~~~~~~..p...");
		wmap("...~~~~~p......");
		wmap(".....~~.....p..");
		wmap("/pp.........../");
		wmap("//...........//");
	}
	
	if(xxx == 6 && yyy == 3){
		biome(Zone.desert);
		ww.secBlock = imgCactusSand; ww.secX = 5; ww.secY = 7; ww.secType = Sec.burn;
		wmap("//...........//");
		wmap("//...........//");
		wmap("...............");
		wmap("...%...%...%...");
		wmap("...............");
		wmap("...............");
		wmap(".....%.....%...");
		wmap("....%=.........");
		wmap("...............");
		wmap("...........%...");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	if(xxx == 6 && yyy == 4){
		biome(Zone.desert);
		ww.secBlock = imgCactusSand; ww.secX = 10; ww.secY = 8; ww.secType = Sec.burn;
		wmap("//...........//");
		wmap("//...........//");
		wmap(".....%....%....");
		wmap("...............");
		wmap("...............");
		wmap("...%..%....%...");
		wmap("...............");
		wmap("...............");
		wmap("....%..%..=....");
		wmap("...............");
		wmap("///////......./");
		wmap("/////////....//");
	}
	
	
	if(xxx == 7 && yyy == 1){
		biome(Zone.desert);
		ww.secBlock = imgCactusSand; ww.secX = 8; ww.secY = 2; ww.secType = Sec.burn;
		wmap("///////////////");
		wmap("//.r.........//");
		wmap("/.......=%..../");
		wmap("............../");
		wmap("....%..rrrr.../");
		wmap(".........rrrrr/");
		wmap("............../");
		wmap("....%........./");
		wmap("..........%.../");
		wmap("............../");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	if(xxx == 7 && yyy == 2){
		biome(Zone.desert);
		ww.secBlock = imgCactusSand; ww.secX = 12; ww.secY = 4; ww.secType = Sec.burn;
		wmap("//...........//");
		wmap("//...........//");
		wmap("........%%..../");
		wmap("............../");
		wmap("....%%......=./");
		wmap("............../");
		wmap("............../");
		wmap("....%%......%%/");
		wmap("............../");
		wmap("........%%..../");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	if(xxx == 7 && yyy == 3){
		biome(Zone.desert);
		ww.secBlock = imgCactusSand; ww.secX = 11; ww.secY = 5; ww.secType = Sec.burn;
		wmap("//...........//");
		wmap("//...........//");
		wmap(".......%.......");
		wmap("...............");
		wmap("...............");
		wmap("...%...%...=...");
		wmap("...............");
		wmap("...............");
		wmap(".......%...%...");
		wmap("...............");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	if(xxx == 7 && yyy == 4){
		biome(Zone.desert);
		ww.secBlock = imgCactusSand; ww.secX = 4; ww.secY = 6; ww.secType = Sec.burn;
		wmap("//...........//");
		wmap("//...........//");
		wmap("............../");
		wmap("....%..%..%.../");
		wmap("............../");
		wmap("............../");
		wmap("....=..%..%.../");
		wmap("............../");
		wmap("............../");
		wmap("....%..%..%.../");
		wmap("/............//");
		wmap("//..../////////");
	}
	
	
	
	
	
	
	

}