x += xSpeed;
y += ySpeed;
ySpeed += grav;

image_alpha -= fade;

image_xscale += gro;
image_yscale += gro;

timeCD --;
if(timeCD < 1){
	instance_destroy();
}