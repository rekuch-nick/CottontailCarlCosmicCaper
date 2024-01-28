event_inherited();


aly = 1;

pow = 0;
burnPow = 180;

moveSpeed = 4;

xTar = mouse_x;
yTar = mouse_y;
if(pc.eventTrigger[Event.gotOil]){
	xTar = pc.x + choose(-100, 0, 100);
	yTar = pc.y + choose(-100, 0, 100);
}


timeCD = 60;

image_alpha = .6;
destroyOnHit = false;
passWall = true;
gro = .1;

isBasicShot = false;
secType = Sec.burn;

isFire = true;
