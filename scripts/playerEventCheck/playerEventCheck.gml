function playerEventCheck(){
	
	
	
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
}