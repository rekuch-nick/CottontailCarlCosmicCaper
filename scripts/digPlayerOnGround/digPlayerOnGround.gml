function digPlayerOnGround(){
	
	//if(pc.y + 1 >= room_height - 32){ return true; }
	if(digPointInBlock(pc.x, pc.y + 33)){ return true; }
	if(digPointInBlock(pc.x-16, pc.y + 33)){ return true; }
	if(digPointInBlock(pc.x+16, pc.y + 33)){ return true; }
	
	return false;
}