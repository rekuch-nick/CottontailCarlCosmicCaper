if(ww.state != State.play){ return; }
if(firstFrame){
	firstFrame = false;
	
	if(isLob){
		ySpeed = -10; grav = 1;
		xTar = pc.x >= x ? 1000 : - 10;
	}
	
	var angle = arctan2(yTar - y, xTar - x);
	xSpeed = cos(angle) * moveSpeed;
	ySpeed = sin(angle) * moveSpeed;
	
	if(isFall){
		xSpeed = 0;
		ySpeed = moveSpeed;
	}
	
	if(pointAtTarget){
		image_angle = point_direction(x, y, xTar, yTar);
	}
}


if(seek > 0){
	seekCD --;
	if(seekCD < 1){
		if(speedUpOnSeek){ moveSpeed ++; }
		seekCD = seekCDMax;
		seek --;
		
		var angle = arctan2(pc.y - y, pc.x - x);
		xSpeed = cos(angle) * moveSpeed;
		ySpeed = sin(angle) * moveSpeed;
	}
	
}







x += xSpeed;
y += ySpeed;
ySpeed += grav;

if(irandom_range(1, 100) < driftChance){
	x += choose(-1, 0, 1);
	y += choose(-1, 0, 1);
}

if(irandom_range(1, 100) < changeChance){
	xSpeed += choose(-1, 0, 1);
	ySpeed += choose(-1, 0, 1);
}

xTile = floor(x / 64);
yTile = floor(y / 64);
if(!passWall && passWallTime < 1){
	if(inBoundsTile(xTile, yTile)){
		if(ww.bmap[xTile, yTile] != noone){
			timeCD = 0;
		}
	}
	
	
	var rock = collision_point(x, y, objSpaceRock, true, true);
	if(rock != noone){
		if(rock.blockShots){
			timeCD = 0;
		}
	}
	
}



passWallTime = clamp(passWallTime - 1, 0, passWallTime);
timeCD --;
if(x < 0 || y < 0 || x > ww.roomWidth || y > room_height){
	timeCD = 0;
}
if(timeCD < 1){
	instance_destroy();
}