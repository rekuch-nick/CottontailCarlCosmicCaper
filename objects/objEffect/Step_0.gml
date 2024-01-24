x += xSpeed;
y += ySpeed;
ySpeed += grav;

image_alpha -= fade;

image_xscale += gro;
image_yscale += gro;

if(flicker){ image_alpha = choose(0, 1); }

if(wob){ image_angle += choose(-1, 0, 1); }

timeCD --;
if(timeCD < 1){
	if(mobSpawnKind != noone){
		instance_create_depth(x, y, ww.layerM, mobSpawnKind);
	}
	instance_destroy();
}