function playerStepSurf(){
	
	pc.beenSurfing = clamp(pc.beenSurfing + 1, 0, 30 * 60 * 60 * 2);
	
	xSpeed = moveSpeed * xIn;
	x += xSpeed;
	while(x < 32){ x ++; }
	while(x >= ww.roomWidth - 32){ x --; }
	
	isBouncing = false;
	
	if(surfJumps > 0){ yBoard = y + 32; }// else { yBoard +=2; }
	
	if(!surfPlayerOnGround(false)){
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
	
	if(!surfJumpHeld && ySpeed < -10){ ySpeed = -10; }
	
	dir = getDirection(ySpeed);
	for(var i=0; i<abs(ySpeed); i++){
		y += dir;
		if(surfPlayerOnGround(dir * -1)){
			break;
		}
	}
	
	if(ySpeed >= -10 && collision_point(pc.x, pc.y, objWave, true, true)){
		surfJumps = surfJumpsMax;
		ySpeed = -11;
	}
	
	if(ySpeed >= -4 && collision_point(pc.x, pc.y, objWaveVisual, true, true)){
		surfJumps = surfJumpsMax;
		ySpeed = -4;
	}
	
	
	
	if(irandom_range(1, 30) == 1){
		instance_create_depth(ww.roomWidth + 20, ocean.y, ww.layerP, objWave);
	} else if (irandom_range(1, 8) == 1) {
		instance_create_depth(ww.roomWidth + 20, ocean.y, ww.layerP, objWaveVisual);
	}
	
	if(irandom_range(1, 40) == 1){
		instance_create_depth(ww.roomWidth + 20, irandom_range(0, 200), ww.layerP, objWaveCoin);
	}
	
	var beenSurf = irandom_range(pc.beenSurfing/2, pc.beenSurfing);
	var skellyChance = max(60 - floor(beenSurf / 30), 10);
	if(irandom_range(1, skellyChance) == 1){
		instance_create_depth(ww.roomWidth + 20, irandom_range(0, 200), ww.layerM, objWaveSkelly);
	}
	
	surfTime --;
	if(surfTime < 1){
		instance_destroy(ocean);
		with(objWave){ instance_destroy(); }
		with(objWaveVisual){ instance_destroy(); }
		with(objEffect){ instance_destroy(); }
		with(objPup){ instance_destroy(); }
		
		ww.state = State.play;
		x = ww.roomWidth / 2;
		y = room_height - 128;
		image_angle = 0;
		worldLoadRoom(0);
		pc.stunTime = 20;
		
		
	}
	
}