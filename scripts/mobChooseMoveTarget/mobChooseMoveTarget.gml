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
	
	if(driftMove == Move.huntOff){
		xTar = pc.x + irandom_range(-100, 100);
		yTar = pc.y + irandom_range(-100, 100);
	}
	
	if(driftMove == Move.bull){
		if(irandom_range(1, 100) < 80){
			xTar = pc.x < x ? 0 : ww.roomWidth;
			yTar = y;
			yGround = pc.y < y ? yGround - 64 : yGround + 64;
			yGround = clamp(yGround, 64, room_height - 64);
		} else {
			xTar = irandom_range(32, ww.roomWidth - 32);
			yTar = y;
			yGround = clamp(yGround + choose(-64, 64), 64, room_height - 64);
		}
	}
	
	var xo = avoidEdges * 64;
	var yo = avoidEdges * 64;
	
	if(xTar < xo){ xTar = xo; }
	if(xTar > ww.roomWidth - xo){ xTar = ww.roomWidth - xo; }
	if(yTar < yo){ yTar = yo; }
	if(yTar > room_height - yo){ yTar = room_height - yo; }
	if(yGround < yo){ yGround = yo; }
	if(yGround > room_height - yo){ yGround = room_height - yo; }
	
	disToTarget = point_distance(x, y, xTar, yTar);
}