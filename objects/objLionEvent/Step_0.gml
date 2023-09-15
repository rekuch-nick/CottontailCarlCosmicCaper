if(ww.state != State.play){ return; }

x += xSpeed;
y += ySpeed;
ySpeed += grav;


attackTime --;
if(attackTime == 0){
	sprite_index = imgLionJumping;
	xSpeed = 17
	ySpeed = -15;
	grav = 1;
	
	for(var i=0; i<10; i++){
		instance_create_depth(x + irandom_range(64, 128), y + irandom_range(-64, 64), ww.layerP, objPupCoin);
	}
}




if(x > room_width){ instance_destroy(); }