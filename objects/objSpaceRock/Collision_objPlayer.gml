if(blockPlayer){
	
	other.x += xSpeed;
	other.y += ySpeed;
	
	
	if(other.x < pc.xFat || other.y < pc.yFat || other.x > ww.roomWidth - pc.xFat || other.y > room_height - pc.yFat){
		repeat(4){ instance_create_depth(x, y, ww.layerE, objChip); }
		if(pc.hurtTime < 1){ hurtPlayer(30, false); }
		instance_destroy();
	}
	
}

if(slowPlayer){
	pc.slowDown = true;
}