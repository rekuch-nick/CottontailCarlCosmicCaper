if(ww.state != State.play){ return; }


if(firstFrame){
	theta = offSet;
	firstFrame = false;
}


cx = pc.x;
cy = pc.y;
theta += theta_speed;
if (theta >= 360) theta -= 360;
x = cx + lengthdir_x(r, theta);
y = cy + lengthdir_y(r, theta);

image_angle -= 6;


r += rDir;
if(rDir < 0 && r <= rMin){ rDir *= -1; }
if(rDir > 0 && r >= rMax){ rDir *= -1; }


if(timeCD < 1){
	instance_destroy();
}