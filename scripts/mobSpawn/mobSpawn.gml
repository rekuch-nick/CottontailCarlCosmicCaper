function mobSpawn(){
	
	if(pc.blockMobSpawn){
		pc.blockMobSpawn = false;
		return;
	}
	
	
	if(!pc.inOverworld){ return; } ///
	
	if(pc.xMap > 18){ return; }
	
	
	
	
	
	
	
	var n = choose(3, 4);
	var nWater = 0;
	
	if(ww.inBiome == Zone.beach){
		nWater = 1;
	}
	
	
	
	
	
	n += nWater;
	
	
	
	if(!pc.inOverworld){ n = 0; }
	
	
	if(n > 0){
		pc.lionCD --;
		if(pc.lionCD  < 1){
			pc.lionCD = pc.lionCDMax - irandom_range(0, 2);
			instance_create_depth(ww.roomWidth / 2, room_height / 2, ww.layerE, objLionEvent);
			return;
		}
	}
	
	
	
	
	
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
		
		if(ww.inBiome == Zone.deepForest){
			t = choose(objMobEnt);
		}
		
		if(ww.inBiome == Zone.sparse){
			//t = choose(objMobWorm);
			t = choose(objMobSpinner);
		}
		
		if(ww.inBiome == Zone.redForest){
			t = choose(objMobHunter);
		}
		
		if(ww.inBiome == Zone.longGrass){
			t = choose(objMobLobber);
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