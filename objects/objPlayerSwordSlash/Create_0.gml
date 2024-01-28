event_inherited();


aly = 1;

pow = 20;

moveSpeed = 0;


isSword = true;

xTar = x;
yTar = y;


timeCD = 17;
destroyOnHit = false;
passWall = true;



isBasicShot = false;

followPlayer = true;
image_angle = -180;


var xx = x + (32  * getDirection(pc.image_xscale));
with(objMobShot){ if(isWindDeflectable){
	if(point_distance(x, y, xx, other.y) < 80){
		instance_create_depth(x, y, ww.layerE, objShotDeflected);
		instance_destroy();
	}
}}