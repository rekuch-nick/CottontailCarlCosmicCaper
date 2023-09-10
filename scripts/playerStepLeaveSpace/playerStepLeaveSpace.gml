function playerStepLeaveSpace(){
	
	var n = .04;
	
	pc.image_yscale -= n;
	if(pc.image_xscale > 0){
		pc.image_xscale -= n;
	} else {
		pc.image_xscale += n;
	}
	pc.y ++;
	if(pc.y < room_height / 2){ pc.y ++; }
	
	
	if(pc.image_yscale < .1){
		pc.image_xscale = 4;
		pc.image_yscale = 4;
		
		pc.x = pc.xCave;
		pc.y = pc.yCave;
		
		pc.inSpace = false;
		worldLoadRoom(0);
		ww.state = State.play;
	}
}