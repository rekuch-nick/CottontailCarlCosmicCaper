event_inherited();


aly = 1;

pow = 15;


moveSpeed = 22;
passWall = true;

pointAtTarget = true;



xTar = mouse_x;
yTar = mouse_y;

var m = getChainMob(true, 1000, false);
if(m != noone){
	xTar = m.x;
	yTar = m.y;
}

if(choose(true, false)){
	xTar += choose(-40, 0, 40);
	yTar += choose(-40, 0, 40);
}
