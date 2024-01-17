x += xSpeed;
y += ySpeed;
ySpeed += grav;

image_alpha -= fade;

image_xscale += gro;
image_yscale += gro;

if(flicker){ image_alpha = choose(0, 1); }

timeCD --;
if(timeCD < 1){
	instance_destroy();
}