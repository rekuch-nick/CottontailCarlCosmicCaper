if(ww.state != State.play){ return; }
if(firstFrame){
	firstFrame = false;
	
	var aaa = pc.x; var bbb = pc.y;
	
	with(objPlayerDupe){
		//if(choose(true, true)){
		if(choose(true, true, false)){
			aaa = x; bbb = y;
			other.xTar = aaa;
			other.yTar = bbb;
		}
	}
	
	if(isLob){
		ySpeed = -10; grav = 1;
		xTar = aaa >= x ? 1000 : - 10;
		if(object_index = objMobShotLobOther){
			///if(pc.y >= y){
			//	ySpeed = 0;
			//}
		}
		
		if(isLobTall){
			xTar = choose(true, false) ? 1000 : - 10;
			ySpeed = -30;
		}
	}
	
	if(lineHunt){
		if(abs(x - aaa) >= abs(y - bbb)){
			yTar = y;
			xTar = aaa < x ? -100 : 1000;
		} else {
			xTar = x;
			yTar = bbb < y ? -100 : 1000;
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
		if(fallDrift){ xSpeed = choose(-2, -1, 0, 1, 2); }
		ySpeed = moveSpeed;
		if(fallBounce){ ySpeed = -6; grav = 1; gravMax = 26; }
		if(sprite_index == imgFrozenEffect){ ySpeed = irandom_range(-6, -4); }
	}
	
	if(object_index == objMobShotAxe){
		xSpeed = getDirection(xSpeed) * irandom_range(4, 9);
		ySpeed = irandom_range(-34, -20);
		grav = 1;
	}
	
	if(pointAtTarget){
		image_angle = point_direction(x, y, xTar, yTar);
	}
}


if(inertTime > 0){
	inertTime --;
	if(inertTime == 0 && inertOver != noone){
		instance_create_depth(x, y, depth, inertOver);
	}
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


if(spin){
	image_xscale += 0.1 * spinDir;
	if(image_xscale >= image_yscale){ spinDir = -1; }
	if(image_xscale <= -image_yscale){ spinDir = 1; }
}


if(irandom_range(0, 99) < quarterTurnChance){ 
	image_angle += 90; 
	repeat(sprayOnQuarterTurn){
		instance_create_depth(x, y, depth, objMobShotSmallRandom);
	}
}

if(isFall && fallHunt){
	xSpeed = 0;
	if(pc.x < x){ xSpeed = -3; }
	if(pc.x > x){ xSpeed = 3; }
}

x += xSpeed;
y += ySpeed;
ySpeed += grav;
if(gravMax != 0 && ySpeed > gravMax){
	ySpeed = gravMax;
}

if(followMob != noone){
	x = followMob.x;
	y = followMob.y;
}



if(bounce){
	while(x < 0 || y < 0 || x >= ww.roomWidth || y >= room_height){
		x -= xSpeed;
		y -= ySpeed;
		
		xSpeed *= random_range(-1.2, -.8);
		ySpeed *= random_range(-1.2, -.8);
	}
}

if(splitStrike != noone){
	if(abs(x - pc.x) < 20 || abs(y - pc.y) < 20){
		timeCD = 0;
		instance_create_depth(x, y, depth, splitStrike);
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
		if(object_index == objMobShotTracerFade){
			image_xscale -= .01;
			image_yscale -= .01;
			timeCD -= 15;
		}
	}
}

if(object_index == objMobShotSeekMine){
	if(point_distance(x, y, pc.x, pc.y) < 150){ // && irandom_range(1, 30) == 1){
		for(var a=x-150; a<=x+150; a+=25){
			instance_create_depth(a, y, depth, objMobShotStill);
		}
		for(var b=y-150; b<=y+150; b+=25){
			instance_create_depth(x, b, depth, objMobShotStill);
		}
		timeCD = 0;
	}
	
}




if(flicker){ image_alpha = random_range(.5, 1); }

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
	if(splitNumber > 0){ repeat(splitNumber){
		instance_create_depth(x, y, depth, splitInto);
	}}
	
	instance_destroy();
}