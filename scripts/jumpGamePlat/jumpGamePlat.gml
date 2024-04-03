function jumpGamePlat(a1, b, w){
	
	var t = objJumpTilePlat;
	
	if(pc.jumpRow > 20){
		if(irandom_range(0, 99) < 50){
			t = objJumpTilePlatFall;
		}
	}
	
	
	for(var a=a1; a<a1+w; a++){
		var s = instance_create_depth(a * 64, b * 64, ww.layerB, t);
		
		if(t == objJumpTilePlat){
			s.image_index = irandom_range(0, s.image_number);
		}
	}
}