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
		if(ww.inBiome == Zone.hills){ t = imgDirtLight; }
		if(ww.inBiome == Zone.desert){ t = imgSand; }
		if(ww.inBiome == Zone.waste){ t = imgGrassWaste; }
		if(ww.inBiome == Zone.grave){ t = imgDirtGrave; }
		if(ww.inBiome == Zone.snow){ t = imgSnow; }
		if(ww.inBiome == Zone.volcano){ t = imgDirtLight; }
		if(ww.inBiome == Zone.darkHills){ t = imgDirtDark; }
		
		if(ww.inBiome == Zone.moon){ t = imgCheeseFloor; }
		
		
		ww.fmap[a, b] = t;
		ww.bmap[a, b] = noone;
	}}

}