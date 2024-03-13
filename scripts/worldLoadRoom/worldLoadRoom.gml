function worldLoadRoom(dir){
	
	pc.timeOnScreen = 0;
	pc.xPushBlock = 0;
	pc.yPushBlock = 0;
	ww.usedKeyCard = false;
	with(objEffect){ instance_destroy(); }
	with(objMob){ instance_destroy(); }
	with(objPup){ instance_destroy(); }
	ww.txt = "";
	ww.txtTime = 0;
	ww.lakeDrained = false;
	ww.pushableList = noone;
	ww.secX = 0; ww.secY = 0;
	
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
			//if(s.sprite_index != imgWater){
			if(a % 2 == 0 && b % 2 == 0){ s.image_index = 1; }
			if(a % 3 == 0 && b % 3 == 0){ s.image_index = 2; }
			//}
			
			if(s.sprite_index == imgWater){ s.isWater = true; s.isLand = false; }
			if(s.sprite_index == imgWaterDark){ s.isWater = true; s.isLand = false; }
			
			if(s.sprite_index == imgLava){ s.isWater = true; s.isLand = false; }
			
			
			if(s.sprite_index == imgSkyBlock){ 
				s.image_alpha = b * .1;
				s.image_index = 0;
				if(b == 10){ s.image_index = 1; }
				if(b == 11){ s.image_index = 2; }
				s.isUnwalkable = true
			}
			
			
			
			
			ww.fmap[a, b] = s;
		}
		
		
		if(ww.bmap[a, b] != noone){
			var s = instance_create_depth(a * 64 + xo, b * 64 + yo, ww.layerB - b, objBlock);
			s.sprite_index = ww.bmap[a, b];
			if(s.sprite_index == imgPushBlock){ s.canPush = true; }
			if(s.sprite_index == imgPushBlockGrass){ s.canPush = true; }
			if(s.sprite_index == imgPushBlockSnow){ s.canPush = true; }
			if(s.sprite_index == imgMobArmorStillGrass){ s.canPush = true; }
			ww.bmap[a, b] = s;
			
			if(!ww.secExposed[pc.xMap, pc.yMap]){
				if(a == ww.secX && b == ww.secY){
					s.isSec = true;
				}
			}
		}
		
		
	}}
	
	
	if(ww.pushableList != noone){ for(var i=0; i<array_length(ww.pushableList); i++){
		var co = ww.pushableList[i];
		if(ww.bmap[co.a, co.b] != noone){
			ww.bmap[co.a, co.b].canPush = true;
		}
	}}
	
	
}