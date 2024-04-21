function jumpMobOnGround(){
	
	if(collision_point(x - 20, y + 33, objJumpTilePlat, true, true)){ return true; }
	if(collision_point(x - 20, y + 33, objJumpTilePlat, true, true)){ return true; }
	return false;
	
}