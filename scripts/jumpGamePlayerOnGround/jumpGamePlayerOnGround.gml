function jumpGamePlayerOnGround(){
	
	if(pc.yIn > 0){ return false; }
	
	
	
	var plat = collision_point(pc.x, pc.y + (pc.sprite_height / 2) + 1, objJumpTilePlat, true, true);
	if(plat){
		return plat;
	}
	
	plat = collision_point(pc.x + 16, pc.y + (pc.sprite_height / 2) + 1, objJumpTilePlat, true, true);
	if (plat) {
		return plat;
	}
	
	plat = collision_point(pc.x - 16, pc.y + (pc.sprite_height / 2) + 1, objJumpTilePlat, true, true);
	if (plat) {
		return plat;
	}
	
	
	
	//if(pc.y > room_height){ return pc; }
	if(pc.y > room_height){ 
		with(objJumpTile){ instance_destroy(); }
		with(objJumpTilePlat){ instance_destroy(); }
		
		ww.state = State.play;
		x = ww.roomWidth / 2;
		y = room_height - 128;
		image_angle = 0;
		worldLoadRoom(0);
		pc.stunTime = 20;
		
		
		
		return pc;
	}
	
	return false;
}