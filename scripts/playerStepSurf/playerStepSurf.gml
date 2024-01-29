function playerStepSurf(){
	
	xSpeed = moveSpeed * xIn;
	x += xSpeed;
	while(x < 32){ x ++; }
	while(x >= ww.roomWidth - 32){ x --; }
	
	isBouncing = false;
	
	if(surfJumps > 0){ yBoard = y + 32; }// else { yBoard +=2; }
	
	if(!surfPlayerOnGround()){
		ySpeed ++;
	} else {
		if(ySpeed > 0){ ySpeed = 0; }
		surfJumps = surfJumpsMax;
	}
	
	if(surfJumpHeld && isBouncing){
		ySpeed = -20;
		surfJumps = 1;
	} else if(surfJumpPressed){ 
		if(surfJumps > 0){
			surfJumps --;
			ySpeed = -20;
		}
	}
	
	
	dir = getDirection(ySpeed);
	for(var i=0; i<abs(ySpeed); i++){
		y += dir;
		if(surfPlayerOnGround()){
			break;
		}
	}
	
	
	
	if(irandom_range(1, 30) == 1){
		instance_create_depth(ww.roomWidth + 20, ocean.y, ww.layerP, objWave);
	}
	
	if(irandom_range(1, 60) == 1){
		instance_create_depth(ww.roomWidth + 20, irandom_range(0, 200), ww.layerP, objWaveCoin);
	}
	
	surfTime --;
	if(surfTime < 1){
		instance_destroy(ocean);
		with(objWave){ instance_destroy(); }
		with(objEffect){ instance_destroy(); }
		with(objPup){ instance_destroy(); }
		
		ww.state = State.play;
		x = ww.roomWidth / 2;
		y = room_height - 128;
		worldLoadRoom(0);
		pc.stunTime = 20;
		
		
	}
	
}