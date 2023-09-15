function biome(z){
	ww.inBiome = z;
	
	
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		var t = imgGrass;
		if(ww.inBiome == Zone.cave){ t = imgDirt; }
		if(ww.inBiome == Zone.beach){ t = imgSandBeach; }
		if(ww.inBiome == Zone.jungle){ t = imgGrassJungle; }
		if(ww.inBiome == Zone.deepForest){ t = imgGrassDeep; }
		if(ww.inBiome == Zone.longGrass){ t = imgGrassLong; }
		if(ww.inBiome == Zone.sparse){ t = imgGrassSparse; }
		if(ww.inBiome == Zone.redForest){ t = imgGrassSparse; }
		
		
		ww.fmap[a, b] = t;
		ww.bmap[a, b] = noone;
	}}

}