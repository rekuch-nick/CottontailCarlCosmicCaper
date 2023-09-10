if(ww.state != State.play){ return; }


if(image_alpha < alpha){ image_alpha += .01; }
y += ySpeed;


if(y >= room_height){ instance_destroy(); }