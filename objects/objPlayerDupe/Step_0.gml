if(ww.state != State.play){ return; }



if(pc.inSpace){
	y ++;
	if(y > room_height + 20){ instance_destroy(); }
}