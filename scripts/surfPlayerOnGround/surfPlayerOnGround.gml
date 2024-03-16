function surfPlayerOnGround(movingUp){
	
	if(!movingUp){
		if(collision_point(pc.x, pc.y, objWave, true, true)){
			pc.isBouncing = true;
			return true;
		}
	}
	
	
	if(surfPointInBlock(pc.x, pc.y + pc.yFat)){ return true; }
	if(surfPointInBlock(pc.x - pc.xFat, pc.y + pc.yFat)){ return true; }
	if(surfPointInBlock(pc.x + pc.xFat, pc.y + pc.yFat)){ return true; }
	
	return false;
}