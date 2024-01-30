if(!pc.eventTrigger[Event.gotBird]){ return; }
if(!ww.state == State.play){ return; }

x = pc.x;
y = pc.y - 100;



//cx = pc.x; cy = pc.y - 100;
//angle = pc.frames*ss; 

//x = cx + sin(angle)*rad; 
//y = cy + cos(angle)*rad;








cx = pc.x;
cy = pc.y;
theta += theta_speed;
if (theta >= 360) theta -= 360;
x = cx + lengthdir_x(r, theta) + image_index * 4;
y = cy + lengthdir_y(r, theta) + image_index * 4;

if(theta >= 90 && theta < 270){
	image_xscale = -4;
} else {
	image_xscale = 4;
}


if(instance_number(objMob) > 0){
	shootCD --;
	if(shootCD < 1){
		shootCD = irandom_range(10, shootCDMax);
		instance_create_depth(x, y, ww.layerE, objPlayerArrow);
	}
}
