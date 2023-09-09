function mobSpawn(){
	
	if(pc.blockMobSpawn){
		pc.blockMobSpawn = false;
		return;
	}
	
	var n = choose(3, 4);
	var nWater = 0;
	
	if(ww.inBiome == Zone.beach){
		nWater = 1;
	}
	
	
	
	
	
	n += nWater;
	
	
	
	if(!pc.inOverworld){ n = 0; }
	
	
	
	while(n > 0){
		
		var a = irandom_range(1, 13);
		var b = irandom_range(1, 10);
		var t = objMob;
		
		if(ww.inBiome == Zone.grass){
			t = choose(objMob, objMob, objMob, objMobSnake);
		}
		
		if(ww.inBiome == Zone.forest){
			t = choose(objMobMossman);
		}
		
		if(ww.inBiome == Zone.beach){
			t = choose(objMobCrab);
		}
		
		if(ww.inBiome == Zone.jungle){
			t = choose(objMobGoon);
		}
		
		if(ww.bmap[a, b] != noone){ continue; }
		
		if(nWater > 0){
			if(!ww.fmap[a, b].isWater){ continue; }
			nWater --;
			t = objMobJelly;
		} else {
			if(ww.fmap[a, b].isWater){ continue; }
		}
		
		n --;
		var s = instance_create_depth(a * 64 + 32, b * 64 + 32, ww.layerM - 1, objShadow);
		s.mobKind = t;
		
	}
	
	
	
}