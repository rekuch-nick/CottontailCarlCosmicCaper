ySpeedPos = ySpeed >= 0;
event_inherited();
ySpeedPos2 = ySpeed >= 0;
if(ySpeedPos != ySpeedPos2){
	var e = instance_create_depth(x, y + 64, depth - 1, objEffect);
	e.txt = "CRUNCH!";
	e.txtC1 = c_yellow; e.txtC2 = c_red; e.ySpeed = -1;
}
