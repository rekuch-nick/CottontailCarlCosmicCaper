function playerStepPlay(){
	if(ww.txtTime < 30 * 30){ ww.txtTime ++; }
	
	
	
	if(xIn < 0 && image_xscale > 0){ image_xscale *= -1; }
	if(xIn > 0 && image_xscale < 0){ image_xscale *= -1; }
	
	
	
	var spd = moveSpeed;
	if(xIn != 0 && yIn != 0){
		spd /= 1.4;
	}
	
	xSpeed = xIn * spd;
	ySpeed = yIn * spd;
	
	if(xPush != 0){
		pushingTime = 0;
		xSpeed += xPush;
		if(xPush > 0){ xPush --; }
		if(xPush > 0){ xPush ++; }
	}
	
	if(yPush != 0){
		pushingTime = 0;
		ySpeed += yPush;
		if(yPush > 0){ yPush --; }
		if(yPush > 0){ yPush ++; }
	}
	
	
	
	
	var bumped = false;
	var dir = getDirection(xSpeed);
	var htDir = dir < 0 ? 4 : 2;
	for(var i=0; i<abs(xSpeed); i++){
		x += dir;
		if(!creatureCanBeHereDir(htDir)){
			x -= dir;
			bumped = true;
			break;
		}
	}
	
	var dir = getDirection(ySpeed);
	var htDir = dir < 0 ? 1 : 3;
	for(var i=0; i<abs(ySpeed); i++){
		y += dir;
		if(!creatureCanBeHereDir(htDir)){
			y -= dir;
			bumped = true;
			break;
		}
	}
	
	
	if(bumped){
		pushingTime ++;
	} else {
		pushingTime = 0;
	}
	
	
	
	
	if(pushingTime > 3){
		
		var d = 0;
		if(x <= 0 + xFat){ d = 4; x = ww.roomWidth - 28; }
		else if(x >= ww.roomWidth - xFat - 1){ d = 2; x = 28; }
		else if(y <= 0 + yFat){ d = 1; y = room_height - 28; }
		else if(y >= room_height - yFat - 1){ d = 3; y = 28; }
		
		if(d == 3 && !inOverworld){
			ww.state = State.useStairs;
			return;
		}
		
		
		if(d != 0){
			if(d == 1){ yMap --; }
			if(d == 2){ xMap ++; }
			if(d == 3){ yMap ++; }
			if(d == 4){ xMap --; }
			worldLoadRoom(d);
			scrollTime = room_height;
			scrollDir = d;
			if(d == 2 || d == 4){ scrollTime = ww.roomWidth; }
			ww.state = State.scroll;
		}
	}
	
	
	
	
	
	
	
	
	if(shootCD > 0){ shootCD --; } 
	if (mouseLHold){
		if(mouse_x < x && image_xscale > 0){ image_xscale *= -1; }
		if(mouse_x > x && image_xscale < 0){ image_xscale *= -1; }
		if(shootCD < 1){
			shootCD = shootCDMax;
			var xo = image_xscale > 0 ? 20 : -20;
			instance_create_depth(x + xo, y - 12, ww.layerE, objPlayerBeams);
		}
		
	}
	
	if(hurtTime > 0){ hurtTime --; }
	
	
	
	
	//check for stairs
	xTile = floor(x / 64);
	yTile = floor(y / 64);
	if(inOverworld){
		if(xTile >= 0 && yTile >= 0 && xTile < 15 && yTile < 12){
			if(ww.fmap[xTile, yTile] != noone && ww.fmap[xTile, yTile].sprite_index == imgDoorway){
				ww.state = State.useStairs;
				ww.stairAlpha = 0;
			}
		}
	}
	
	
	
	
	
	//animate
	aniCD --;
	if(xIn != 0 || yIn != 0){ aniCD -= 2; }
	if(aniCD < 1){
		aniCD = 20;
		walkFrame = walkFrame == 0 ? 1 : 0;
	}
	var f = walkFrame;
	
	
	image_index = f;
	
}