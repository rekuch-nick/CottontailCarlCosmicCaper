function jumpGameRow(b){
	
	pc.jumpRow ++;
	
	for(var a=0; a<15; a++){
		var s = instance_create_depth(a * 64, b * 64, ww.layerF, objJumpTile);
		if(a < 5 || a > 9){
			s.sprite_index = imgLightSky;
		} else {
			s.sprite_index = imgTreeTrunk;
		}
	}
	
	if(choose(true, false) || pc.jumpRow % 2 == 0){
		var w = choose(1, 1, 2, 2, 2, 3, 3, 3, 4, 5);
		var a = irandom_range(1, 13 - w);
		var off = abs(a - pc.xLastPlat);
		if( off > 4 ){
			a -= (off - 4); 
			w += (off - 4);
		}
		jumpGamePlat(a, b, w);
		pc.xLastPlat = floor(a + w/2);
	}
	
}