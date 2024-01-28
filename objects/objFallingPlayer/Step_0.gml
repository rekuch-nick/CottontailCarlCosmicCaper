




y += ySpeed;
ySpeed += 1;

if(y >= pc.y){
	pc.visible = true;
	instance_destroy();
} else {
	pc.stunTime ++;
	pc.x = x;
	pc.y = pcy;
	pc.visible = false;
}