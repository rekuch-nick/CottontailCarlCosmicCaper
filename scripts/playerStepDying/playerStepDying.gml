function playerStepDying(){
	if(image_xscale < 0){ image_xscale *= -1; }

	
	x += choose(-5, 5);
	y += choose(-5, 5);
	image_alpha = random_range(0, 1);
	image_angle += choose(15, -15, -20);
	image_xscale += .01;
	image_yscale += .01;
	
	ww.deadTime += .01;
	
	if(ww.deadTime > 1){
		image_alpha = 0; image_xscale = 4; image_yscale = 4;
		if(bagPressed){
			ww.deadTime = 0;
			playerReset();
		}
	}
}