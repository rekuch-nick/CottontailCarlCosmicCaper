if(ww.state != State.jumpGame){ return; }


if(irandom_range(1, 100) == 1 ){
	xDir *= -1;
	image_xscale = 4 * xDir;
}

if(!jumpMobOnGround()){
	ySpeed = min(ySpeed + 1, 16);
} else {
	ySpeed = max(ySpeed, 0);
}


x += moveSpeed * xDir;

var yDir = ySpeed > 0 ? 1 : -1;
for(var i=0; i<abs(ySpeed); i++){
	if(yDir > 0 && jumpMobOnGround()){ break; }
	y += yDir;
	
}




if(irandom_range(0, 99) < jumpChance){ ySpeed = irandom_range(jumpPow, jumpPow2); }