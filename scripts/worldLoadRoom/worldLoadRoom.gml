function worldLoadRoom(dir){
	
	with(objEffect){ instance_destroy(); }
	with(objMob){ instance_destroy(); }
	ww.txt = "";
	ww.txtTime = 0;
	
	
	var xo = 0;
	var yo = 0;
	
	if(dir == 1){ yo = -room_height; }
	if(dir == 2){ xo = ww.roomWidth; }
	if(dir == 3){ yo = room_height; }
	if(dir == 4){ xo = -ww.roomWidth; }
	
	worldGetRoom(pc.xMap, pc.yMap);
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		if(ww.fmap[a, b] != noone){
			var s = instance_create_depth(a * 64 + xo, b * 64 + yo, ww.layerF, objTile);
			s.sprite_index = ww.fmap[a, b];
			if(a % 2 == 0 && b % 2 == 0){ s.image_index = 1; }
			if(a % 3 == 0 && b % 3 == 0){ s.image_index = 2; }
			
			if(s.sprite_index == imgWater){ s.isWater = true; s.isLand = false; }
			
			
			ww.fmap[a, b] = s;
		}
		
		
		if(ww.bmap[a, b] != noone){
			var s = instance_create_depth(a * 64 + xo, b * 64 + yo, ww.layerB, objBlock);
			s.sprite_index = ww.bmap[a, b];
			ww.bmap[a, b] = s;
		}
		
		
	}}
	
	
	
	
	
}