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
	
	if(pointAtTarget){
		image_angle = point_direction(x, y, xTar, yTar);
	}
}


x += xSpeed;
y += ySpeed;
ySpeed += grav;

xTile = floor(x / 64);
yTile = floor(y / 64);
if(!passWall && passWallTime < 1){
	if(inBoundsTile(xTile, yTile)){
		if(ww.bmap[xTile, yTile] != noone){
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