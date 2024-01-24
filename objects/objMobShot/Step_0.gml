if(ww.state != State.play){ return; }
if(firstFrame){
	firstFrame = false;
	
	if(isLob){
		ySpeed = -10; grav = 1;
		xTar = pc.x >= x ? 1000 : - 10;
	}
	
	if(lineHunt){
		if(abs(x - pc.x) >= abs(y - pc.y)){
			yTar = y;
			xTar = pc.x < x ? -100 : 1000;
		} else {
			xTar = x;
			yTar = pc.y < y ? -100 : 1000;
		}
	}
	
	if(dontMove){
		xTar = x; yTar = y; moveSpeed = 0;
	}
	if(rightOnly){ xTar = ww.roomWidth + 1; yTar = y; }
	if(leftOnly){ xTar = -1; yTar = y; }
	
	var angle = arctan2(yTar - y, xTar - x);
	xSpeed = cos(angle) * moveSpeed;
	ySpeed = sin(angle) * moveSpeed;
	
	if(isFall){
		xSpeed = 0;
		ySpeed = moveSpeed;
		if(sprite_index == imgFrozenEffect){ ySpeed = irandom_range(-6, -4); }
	}
	
	if(pointAtTarget){
		image_angle = point_direction(x, y, xTar, yTar);
	}
}


if(inertTime > 0){
	inertTime --;
	return;
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

if(bounce){
	while(x < 0 || y < 0 || x >= ww.roomWidth || y >= room_height){
		x -= xSpeed;
		y -= ySpeed;
		
		xSpeed *= random_range(-1.2, -.8);
		ySpeed *= random_range(-1.2, -.8);
	}
}

if(speedupRate != 1){
	xSpeed *= speedupRate;
	ySpeed *= speedupRate;
}

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

if(spawn != noone){
	spawnCD --; if(spawnCD < 1){
		spawnCD = spawnCDMax;
		instance_create_depth(x, y, depth, spawn);
	}
}


if(fade != 0){
	image_alpha -= fade;
	if(image_alpha < 0){ timeCD = 0; }
}

passWallTime = clamp(passWallTime - 1, 0, passWallTime);
timeCD --;
if(x < 0 || y < 0 || x > ww.roomWidth || y > room_height){
	timeCD = 0;
}
if(timeCD < 1){
	instance_destroy();
}