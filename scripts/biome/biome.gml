function biome(z){
	ww.inBiome = z;
	
	
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		var t = imgGrass;
		if(ww.inBiome == Zone.cave){ t = imgDirt; }
		if(ww.inBiome == Zone.beach){ t = imgSandBeach; }
		
		
		ww.fmap[a, b] = t;
		ww.bmap[a, b] = noone;
	}}

}