if(ww.state != State.play){ return; }
if(firstFrame){
	firstFrame = false;
	if(mobKind != noone){
		mob = instance_create_depth(x, -32, ww.layerM, mobKind);
		mob.falling = true;
		mob.fallTo = y;
		mob.shadowObj = id;
		mobKind = noone;
	}
}


image_alpha = random_range(.4, 1);