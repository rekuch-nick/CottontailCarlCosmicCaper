event_inherited();
if(ww.state != State.play){ return; }

image_alpha -= .005;
if(image_alpha < .4){
	ww.bmap[xSpot, ySpot] = noone;
	instance_destroy();
}