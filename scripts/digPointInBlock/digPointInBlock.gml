function digPointInBlock(a, b){
	//if(a < 16 || a >= ww.roomWidth - 16 || b < 32 || b >= room_height - 32){ return true; }
	
	var aa = floor(a / 64);
	var bb = floor(b / 64);
	
	if(!inBoundsTile(aa, bb)){ return true; }
	if(ww.bmap[aa, bb] != noone){ return true; }
	
	return false;
}