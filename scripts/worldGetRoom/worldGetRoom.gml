function worldGetRoom(xxx, yyy){ //26 x 14
	
	ww.canLion = true;
	ww.noMobs = false;
	ww.noFall = false;
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		ww.fmap[a, b] = noone;
		ww.bmap[a, b] = noone;
	}}
	//ww.bmap[0, 0] = imgRock; ww.bmap[0, 11] = imgRock; ww.bmap[14, 0] = imgRock; ww.bmap[14, 11] = imgRock;
	
	ww.mapRow = 0;
	biome(Zone.grass);
	
	if(!pc.inOverworld){ 
		worldGetRoomCave(xxx, yyy);
		
		return;
	}
	
	ww.secBlock = noone; ww.secX = 5; ww.secY = 5; ww.secType = noone;
	
	worldGetRoomGrass(xxx, yyy);
	worldGetRoomBeach(xxx, yyy);
	worldGetRoomJungle(xxx, yyy);
	worldGetRoomDeepForest(xxx, yyy);
	worldGetRoomLongGrass(xxx, yyy);
	worldGetRoomSparse(xxx, yyy);
	worldGetRoomRedForest(xxx, yyy);
	worldGetRoomForest(xxx, yyy);
	worldGetRoomHills(xxx, yyy);
	worldGetRoomDesert(xxx, yyy);
	worldGetRoomWaste(xxx, yyy);
	worldGetRoomDark(xxx, yyy);
	worldGetRoomSnow(xxx, yyy);
	worldGetRoomLava(xxx, yyy);
	worldGetRoomGrave(xxx, yyy);
	
	
	
	
	if(pc.xMap == 20 && pc.yMap == 0){
		ww.txt = "The STAR pulses in your hand.\n\nThe universe wants you to defeat the dragon invasion, but cannot interfere directly.\n\nChoose a boon, to help you on your way:";
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CcccccccccccccC");
		wmap("CcccccccccccccC");
		wmap("CcccccccccccccC");
		wmap("CcccccccccccccC");
		wmap("CcccccccccccccC");
		wmap("CcccccccccccccC");
		wmap("CCCCCCCCCCCCCCC");
		
	}
	
	
	
	
	
	
}