if(ww.state != State.surfGame){ return; }

x += xSpeed;

image_yscale += choose(-.1, 0, .1);

if(x < -100){ instance_destroy(); }