function jumpGameRow(b){
	
	
	
	for(var a=0; a<15; a++){
		var s = instance_create_depth(a * 64, b * 64, ww.layerF, objJumpTile);
		if(a < 5 || a > 9){
			s.sprite_index = imgLightSky;
		} else {
			s.sprite_index = imgTreeTrunk;
		}
		
		if(a == 10 && irandom_range(1, 4) == 1){
			s.sprite_index = imgTreeBranchRight;
			s.image_index = irandom_range(0, s.image_number - 1);
		} else if (a == 10 && irandom_range(1, 7) == 1){
			s.sprite_index = imgTreeBranchRightLong;
			s.image_index = irandom_range(0, s.image_number - 1);
			a ++;
		}
		
		if(a == 4 && irandom_range(1, 4) == 1){
			s.sprite_index = imgTreeBranchLeft;
			s.image_index = irandom_range(0, s.image_number - 1);
		} else if (a == 3 && irandom_range(1, 7) == 1){
			s.sprite_index = imgTreeBranchLeftLong;
			s.image_index = irandom_range(0, s.image_number - 1);
			a ++;
		}
	}
	
	if(choose(true, false) || pc.jumpRow % 3 == 0){
	//if(pc.jumpRow % 3 == 0){
		var w = choose(1, 1, 2, 2, 2, 3, 3, 3, 4, 5);
		var a = irandom_range(1, 13 - w);
		
		if(pc.jumpRow % 3 == 0){
			while(a > pc.x2LastPlat + 2){ a --; }
			while(a+w < pc.x1LastPlat - 2){ a ++; }
		}
		
		jumpGamePlat(a, b, w);
		if(pc.jumpRow % 3 == 0){
			pc.x1LastPlat = floor(a);
			pc.x2LastPlat = floor(a + w);
		}
	}
	
	pc.jumpRow ++;
}