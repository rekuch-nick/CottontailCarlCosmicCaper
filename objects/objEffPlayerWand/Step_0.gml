if(ww.state != State.play && ww.state != State.warpWind && ww.state != State.leaveSpace){ return; }


x = pc.x;
y = pc.y;

image_angle = timeCD * 30;

if(timeCD > timeCDMax / 2){
	y -= ((timeCDMax ) - timeCD) * 5;
} else {
	y -= timeCD * 5;
}
timeCD --;
if(timeCD < 1){ instance_destroy(); }