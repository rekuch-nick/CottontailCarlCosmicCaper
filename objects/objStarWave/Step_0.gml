if(ww.state != State.play && ww.state != State.rocketing){ return; }


if(image_alpha < alpha){ image_alpha += .01; }
x -= xSpeed;


if(x < - 30 ){ instance_destroy(); }

if(irandom_range(1, 30) == 1){
	y += choose(-4, 4);
}