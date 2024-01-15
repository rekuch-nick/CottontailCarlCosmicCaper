function mobSpawn(){
	
	if(pc.blockMobSpawn){
		pc.blockMobSpawn = false;
		return;
	}
	
	
	if(!pc.inOverworld){ return; } ///
	
	if(pc.xMap > 18){ return; }
	
	
	
	
	
	
	
	var n = choose(3, 4);
	if(ww.mobList != noone){ n = ww.mobList[0]; }
	var nWater = 0;
	
	if(ww.inBiome == Zone.beach && ww.mobList == noone){
		nWater = 1;
	}
	
	
	
	
	
	n += nWater;
	
	
	
	if(!pc.inOverworld){ n = 0; }
	if(ww.noMobs){ n = 0; }
	
	for(var i=0; i<array_length(pc.killMemory); i++){
		if(pc.killMemory[i].a == pc.xMap && pc.killMemory[i].b == pc.yMap){
			n = min(n, pc.killMemory[i].mobsLeft);
		}
	}
	
	
	
	if(n > 0 && ww.canLion){
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
		
		if(ww.inBiome == Zone.desert){
			t = choose(objMobDesertFace, objMobDesertBlob);
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
		
		if(ww.inBiome == Zone.darkHills){
			t = choose(objMobMushMan);
		}
		
		
		if(ww.mobList != noone){
			if(n < array_length(ww.mobList)){
				t = ww.mobList[n];
			}
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
		
		if(ww.noFall){
			if(n == 0){ a = 7; b = 5; }
			var s = instance_create_depth(a * 64 + 32, b * 64 + 32, ww.layerM, t);
		} else {
		
			var s = instance_create_depth(a * 64 + 32, b * 64 + 32, ww.layerM - 1, objShadow);
			s.mobKind = t;
		}
		
	}
	
	
	ww.mobList = noone;
}