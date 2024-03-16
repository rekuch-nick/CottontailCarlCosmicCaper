if(ww.state != State.digGame){ return; }


if(irandom_range(1, 100) == 1 ){
	if(x - pc.x > 0){
		xSpeed = -moveSpeed;
		if(image_xscale > 0){ image_xscale *= -1; }
	} else {
		xSpeed = moveSpeed;
		if(image_xscale < 0){ image_xscale *= -1; }
	}
}


var tries = 0;

x += xSpeed;
while(digMobInBlock() && tries < 100){
	tries ++;
	x -= getDirection(xSpeed);
}
y += ySpeed;
while(digMobInBlock() && tries < 100){
	tries ++;
	y -= getDirection(ySpeed);
}
if(tries >= 100){ instance_destroy(); }

if(irandom_range(0, 99) < gravChance){ 
	ySpeed ++; 
	if(ySpeed > 10){ ySpeed = 10; }
}

if(irandom_range(0, 99) < jumpChance){ ySpeed = irandom_range(jumpPow, jumpPow2); }