function mobChooseMoveTarget(){
	
	if(driftMove == Move.randomPoint){
		xTar = irandom_range(32, ww.roomWidth - 32);
		yTar = irandom_range(32, room_height - 32);
	}
	
	if(driftMove == Move.stayTop){
		xTar = irandom_range(32, ww.roomWidth - 32);
		yTar = irandom_range(32, 178);
	}
	
	if(driftMove == Move.hunt){
		xTar = pc.x;
		yTar = pc.y;
	}
}