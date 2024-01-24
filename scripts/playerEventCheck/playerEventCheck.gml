function playerEventCheck(){
	
	timeOnScreen = clamp(timeOnScreen + 1, 0, 18001);
	
	if(pc.xMap == 14 && pc.yMap == 8 && inOverworld){
		if(ww.bmap[0, 8] != noone &&
			ww.bmap[0, 9] != noone &&
			ww.bmap[14, 8] != noone &&
			ww.bmap[14, 9] != noone ){
			instance_destroy(ww.bmap[7, 6]);
			ww.secExposed[pc.xMap, pc.yMap] = true; 
		}
	}
	
	
	if(pc.xMap == 4 && pc.yMap == 9 && inOverworld){
		if(ww.bmap[6, 0] != noone &&
			ww.bmap[7, 0] != noone &&
			ww.bmap[8, 0] != noone &&
			ww.bmap[14, 4] != noone &&
			ww.bmap[14, 5] != noone &&
			ww.bmap[14, 6] != noone &&
			ww.bmap[14, 7] != noone ){
			instance_destroy(ww.bmap[2, 1]);
			ww.secExposed[pc.xMap, pc.yMap] = true; 
		}
	}
	
	if(pc.xMap == 11 && pc.yMap == 11 && inOverworld && ww.txt != ""){
		if(!pc.eventTrigger[Event.gotFeather] && pc.hpMax >= 200){
			if(timeOnScreen >= 900){//900){
				ww.txt = "";
				with(objBlock){
					if(sprite_index == imgNPCEagle || sprite_index == imgBlank){
						if(sprite_index == imgNPCEagle){
							instance_create_depth(x, y, ww.layerM, objMobEagle);
						}
						ww.bmap[floor(x/64), floor(y/64)] = noone;
						instance_destroy();
					}
				}
			}
		}
	}
	
	if(		ww.inBiome == Zone.waste && 
			timeOnScreen % 60 == 0 &&
			( ( instance_number(objMob) < 10 && instance_number(objMob) > 0 ) || irandom_range(1, 10) == 1 )
			){
			
		//mobSpawn()
		var a = irandom_range(1, 13);
		var b = irandom_range(1, 10);
		var s = instance_create_depth(a * 64 + 32, b * 64 + 32, ww.layerM - 1, objShadow);
		s.mobKind = objMobWormWaste;
	}
}