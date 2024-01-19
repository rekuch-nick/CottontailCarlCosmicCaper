if(ww.state != State.play){ return; }


y += ySpeed;
ySpeed = clamp(ySpeed + 1, -30, 30);

if(y >= yTar){
	var s = instance_create_depth(x, y, depth, objPlayerBlastMed);
	s.pow = 40;
	instance_destroy();
}

