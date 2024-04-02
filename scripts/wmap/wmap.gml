function wmap(s){
	var b = ww.mapRow;
	
	ww.hiddenDoor = noone;
	
	ww.rock1 = imgRock;
	ww.rock2 = imgRockBrown;
	
	ww.bush1 = imgBush;
	ww.bush2 = imgBushDead;
	
	ww.rockWall = imgRockWall;
	
	ww.waterKind = imgWater;
	
	//ww.secBurn = imgBush;
	//ww.secPush = imgRock;
	//ww.secBlast = imgRockWall;
	
	if(ww.inBiome == Zone.beach){
		ww.rock1 = imgRockBrown;
		ww.rock2 = imgRock;
	}
	
	if(ww.inBiome == Zone.deepForest){
		ww.bush1 = imgBushDeep;
	}
	
	if(ww.inBiome == Zone.desert){
		ww.bush1 = imgCactus;
	}
	
	if(ww.inBiome == Zone.longGrass){
		ww.bush2 = imgBushRed;
		ww.rockWall = imgRockWallGrey;
	}
	
	if(ww.inBiome == Zone.redForest){
		ww.bush1 = imgBushRed;
	}
	
	if(ww.inBiome == Zone.waste){
		ww.bush1 = imgBushDead;
	}
	
	if(ww.inBiome == Zone.volcano){
		ww.waterKind = imgLava;
		ww.rockWall = imgRockWallGrey;
	}
	
	if(ww.inBiome == Zone.darkHills){
		ww.waterKind = imgWaterDark;
		ww.rockWall = imgRockWallDark;
		ww.bush1 = imgBushDeadDark;
	}
	
	if(ww.inBiome == Zone.snow){
		ww.rockWall = imgRockWallGrey;
		ww.bush1 = pc.eventTrigger[Event.gotIceStone] ? imgBushDeadIceMelting : imgBushDeadIce;
		ww.bush2 = pc.eventTrigger[Event.gotIceStone] ? imgBushIceMelting : imgBushIce;
		ww.rock1 = imgRockSnow;
	}
	
	if(ww.inBiome == Zone.grave){
		ww.rockWall = imgRockWallGrey;
		ww.bush2 = imgBushRed;
	}
	
	if(ww.inBiome == Zone.deepCave){
		ww.rockWall = imgRockWallDeep;
	}
	
	
	
	for(var a=0; a<15; a++){
		var c = string_char_at(s, a + 1);
		
		if(c == "."){ ww.bmap[a, b] = noone; }
		
		if(c == "#"){ ww.bmap[a, b] = ww.rock1; }
		if(c == "r"){ ww.bmap[a, b] = ww.rock2; }
		if(c == "%"){ ww.bmap[a, b] = ww.bush1; }
		if(c == "b"){ ww.bmap[a, b] = ww.bush2; }
		if(c == "B"){ ww.bmap[a, b] = imgBushLarge; }
		if(c == "["){ ww.bmap[a, b] = imgPushBlock; }
		if(c == "]"){ ww.bmap[a, b] = imgMobArmorStillGrass; }
		if(c == "/"){ ww.bmap[a, b] = ww.rockWall; }
		
		if(c == "L"){ ww.bmap[a, b] = imgRockWallGreyLava; }
		if(c == "p"){ ww.bmap[a, b] = imgPalmTree; }
		if(c == "g"){ ww.bmap[a, b] = imgGrave; }
		if(c == "G"){ ww.bmap[a, b] = imgGraveBig; }
		if(c == "C"){ ww.bmap[a, b] = imgSpaceBlock; }
		
		if(c == "S"){ ww.bmap[a, b] = imgRockWallSnow; }
		
		if(c == "l"){ ww.bmap[a, b] = imgTreeTrunk; }
		
		if(c == "d"){ ww.bmap[a, b] = imgBushDead; }
		
		if(c == "P"){ ww.bmap[a, b] = imgPalaceWall; }
		if(c == "T"){ ww.bmap[a, b] = imgPalaceWallTop; }
		if(c == "M"){ ww.bmap[a, b] = imgPalaceWallBottom; }
		
		if(c == "m"){ ww.bmap[a, b] = imgNPCWorms; }
		
		
		if(c == "A"){ ww.bmap[a, b] = imgSkullBlock; }
		if(c == "F"){ ww.bmap[a, b] = imgFireBlock; }
		
		if(c == "N"){ ww.bmap[a, b] = imgNest; }
		
		
		if(c == "X"){ ww.bmap[a, b] = imgMobArmorStill; }
		
		if(c == " "){ ww.bmap[a, b] = imgBlank; }
		
		
		if(c == "="){ ww.fmap[a, b] = imgDoorway; }
		if(c == "~"){ ww.fmap[a, b] = ww.waterKind; }
		if(c == "0"){ ww.fmap[a, b] = imgSpaceDoor; }
		
		if(c == "s"){ ww.fmap[a, b] = imgSand; }
		if(c == "f"){ ww.fmap[a, b] = imgGrassFlowers; }
		
		if(c == "e"){ ww.fmap[a, b] = imgSkyBlock; }
		if(c == "E"){ ww.fmap[a, b] = imgDirtLightCliff; }
		
		if(c == "c"){ ww.fmap[a, b] = imgSpaceCloud; }
		if(c == "h"){ ww.fmap[a, b] = imgGrassSparse; }
		if(c == "w"){ ww.fmap[a, b] = imgGrassWaste; }
		if(c == "i"){ ww.fmap[a, b] = imgWaterFrozen; }
		
		if(c == ":"){ ww.fmap[a, b] = imgBlackTile; }
		if(c == "+"){ ww.fmap[a, b] = imgLadder; }
		if(c == "o"){ ww.fmap[a, b] = imgBridge; }
		
		if(c == "W"){ ww.fmap[a, b] = imgWarpSpot; }
		
		if(c == "j"){ ww.fmap[a, b] = imgDirt; }
		
		
		if(c == "z"){ ww.fmap[a, b] = imgCheeseFloor; }
		if(c == "Z"){ ww.bmap[a, b] = imgCheeseBlock; }
		
		if(c == "?"){ ww.fmap[a, b] = imgBlockDone; }
		
		
		
		
		if(!ww.secExposed[pc.xMap, pc.yMap]){
			if(ww.secBlock != noone && a == ww.secX && b == ww.secY){
				ww.bmap[a, b] = ww.secBlock;
			}
		}
		
		
		
		
	}
	
	ww.mapRow ++;
}