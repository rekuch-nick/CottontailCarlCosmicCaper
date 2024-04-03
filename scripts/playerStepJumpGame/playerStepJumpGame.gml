function playerStepJumpGame(){
	
	
	
	
	if(xIn < 0){
		x -= 5;
		image_xscale = -4;
	}
	
	if(xIn > 0){
		x += 5;
		image_xscale = 4;
	}
	
	
	var plat = jumpGamePlayerOnGround();
	if(plat){
		if(ySpeed > 0){ ySpeed = 0; }
		jumps = jumpsMax;
		if(plat.object_index == objJumpTilePlatFall){
			plat.y += 1;
			plat.image_index = 1;
			y += 1;
		}
	} else {
		ySpeed ++;
		jumps = 0;
	}
	
	
	if(surfJumpPressed && jumps > 0){
		jumps --;
		ySpeed = jumpPow;
	}
	
	if(ySpeed < 0 && !surfJumpHeld){
		ySpeed = 0;
	}
	
	
	
	if(ySpeed < 0){
		y += ySpeed;
		//y = max(y, 0);
	}
	
	if(ySpeed > 0){
		for(var i=0; i<ySpeed; i++){
			if(jumpGamePlayerOnGround()){
				break;
			} else {
				y ++;
			}
		}
	}
	
	
	
	//return;
	
	with(objJumpTilePlat){ 
		y ++;
		if(y > room_height + 32){ instance_destroy(); }
	}
	
	with(objJumpTile){ 
		y ++;
		if(x == 0 && y == 0){ jumpGameRow(-1); }
		if(y > room_height + 32){ instance_destroy(); }
	}
	
	pc.y ++;

	

}