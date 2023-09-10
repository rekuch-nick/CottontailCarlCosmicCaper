function playerStepEnterSpace(){
	
	if(instance_number(objTile) > 0){
		with(objTile){
			image_alpha -= .03;
			if(image_alpha < 0){
				instance_destroy();
			}
		}
	} else {
		for(var a=0; a<15; a++){ for(var b=0; b<12; b++){
			ww.fmap[a, b] = noone;
			ww.bmap[a, b] = noone;
		}}
		
		for(var b = 0; b<room_height; b+=3){
			instance_create_depth(irandom_range(1, ww.roomWidth - 1), b, 0, objStar);
		}
		
		ww.state = State.play;
		pc.inSpace = true;
		worldLoadPalace();
		pc.newWave = true;
	}
	
	
	
}