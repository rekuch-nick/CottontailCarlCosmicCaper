if(ww.state != State.digGame){ return; }

if(hp < 1){
	ww.bmap[xSpot, ySpot] = noone;
	instance_destroy();
}