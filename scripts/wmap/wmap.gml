function wmap(s){
	var b = ww.mapRow;
	
	ww.rock1 = imgRock;
	ww.rock2 = imgRockBrown;
	
	ww.bush1 = imgBush;
	ww.bush2 = imgBushDead;
	
	ww.rockWall = imgRockWall;
	
	
	if(ww.inBiome == Zone.beach){
		ww.rock1 = imgRockBrown;
		ww.rock2 = imgRock;
	}
	
	if(ww.inBiome == Zone.deepForest){
		ww.bush1 = imgBushDeep;
	}
	
	if(ww.inBiome == Zone.longGrass){
		ww.bush1 = imgBushRed;
		ww.rockWall = imgRockWallGrey;
	}
	
	
	
	for(var a=0; a<15; a++){
		var c = string_char_at(s, a + 1);
		
		if(c == "."){ ww.bmap[a, b] = noone; }
		
		if(c == "#"){ ww.bmap[a, b] = ww.rock1; }
		if(c == "r"){ ww.bmap[a, b] = ww.rock2; }
		if(c == "%"){ ww.bmap[a, b] = ww.bush1; }
		if(c == "b"){ ww.bmap[a, b] = ww.bush2; }
		if(c == "/"){ ww.bmap[a, b] = ww.rockWall; }
		if(c == "p"){ ww.bmap[a, b] = imgPalmTree; }
		if(c == "C"){ ww.bmap[a, b] = imgSpaceBlock; }
		
		if(c == "P"){ ww.bmap[a, b] = imgPalaceWall; }
		if(c == "T"){ ww.bmap[a, b] = imgPalaceWallTop; }
		if(c == "A"){ ww.bmap[a, b] = imgSkullBlock; }
		if(c == "F"){ ww.bmap[a, b] = imgFireBlock; }
		
		
		if(c == "="){ ww.fmap[a, b] = imgDoorway; }
		if(c == "~"){ ww.fmap[a, b] = imgWater; }
		if(c == "0"){ ww.fmap[a, b] = imgSpaceDoor; }
		
		if(c == "s"){ ww.fmap[a, b] = imgSand; }
		if(c == "f"){ ww.fmap[a, b] = imgGrassFlowers; }
		
		if(c == "c"){ ww.fmap[a, b] = imgSpaceCloud; }
	}
	
	ww.mapRow ++;
}