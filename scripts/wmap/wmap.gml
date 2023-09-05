function wmap(s){
	var b = ww.mapRow;
	
	for(var a=0; a<15; a++){
		var c = string_char_at(s, a + 1);
		
		if(c == "#"){ ww.bmap[a, b] = imgRock; }
		if(c == "%"){ ww.bmap[a, b] = imgBush; }
		if(c == "/"){ ww.bmap[a, b] = imgRockWall; }
		if(c == "p"){ ww.bmap[a, b] = imgPalmTree; }
		
		
		if(c == "="){ ww.fmap[a, b] = imgDoorway; }
		if(c == "~"){ ww.fmap[a, b] = imgWater; }
		
		if(c == "s"){ ww.fmap[a, b] = imgSandBeach; }
		
		
	}
	
	ww.mapRow ++;
}