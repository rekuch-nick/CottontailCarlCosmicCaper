function mobChooseMoveTarget(){
	
	if(driftMove == Move.randomPoint){
		xTar = irandom_range(32, ww.roomWidth - 32);
		yTar = irandom_range(32, room_height - 32);
	}
}