function digPlayerInBlock(){
	//if(pc.x < 16 || pc.x >= ww.roomWidth - 16 || pc.y < 32 || pc.y >= room_height - 32){ return true; }
	
	if(digPointInBlock(pc.x-16, pc.y-16)){ return true; }
	if(digPointInBlock(pc.x+16, pc.y-16)){ return true; }
	if(digPointInBlock(pc.x-16, pc.y+16)){ return true; }
	if(digPointInBlock(pc.x+16, pc.y+16)){ return true; }
	
	return false;
}