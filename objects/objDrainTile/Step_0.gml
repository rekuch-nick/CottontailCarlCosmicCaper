if(ww.state != State.play){ return; }

image_alpha -= .01;
if(image_alpha < 0){
	
	/*
	var t = instance_create_depth(x, y, depth, objTile);
	
	if(a == ww.secX && b == ww.secY){
		t.sprite_index = imgDoorway;
	} else {
		t.sprite_index = imgDirt;
	}
	
	ww.fmap[a, b] = t;
	*/
	instance_destroy();
}