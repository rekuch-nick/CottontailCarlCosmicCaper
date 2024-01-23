
timeCD --;
image_xscale += .01;
image_yscale += .01;

if(!justHit || irandom_range(1, 100) < 20){
	x = irandom_range(0, ww.roomWidth);
	y = irandom_range(0, room_height);
}

justHit = false;
if(pc.hp >= pc.hpMax){
	if(timeCD < 1 || instance_number(objMob) == 0){
		ww.state = State.play;
		instance_destroy();
	}
}
