if(ww.state != State.play){ return; }



x += xSpeed;
y += ySpeed;



if(y > room_height + 100){ instance_destroy(); }

