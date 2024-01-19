if(ww.state != State.play){ return; }

timeCD --;
image_alpha = choose(0, 1);

if(timeCD < 1){
	instance_create_depth(x-14, y-14, ww.layerP, objPupCoin);
	instance_create_depth(x-14, y+14, ww.layerP, objPupCoin);
	instance_create_depth(x+14, y-14, ww.layerP, objPupCoin);
	instance_create_depth(x+14, y+14, ww.layerP, objPupCoin);
	instance_destroy();
}