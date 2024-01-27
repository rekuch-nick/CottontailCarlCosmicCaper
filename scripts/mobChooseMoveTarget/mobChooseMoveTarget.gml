function mobChooseMoveTarget(){
	
	if(driftMove == Move.randomWarp){
		do {
			x = irandom_range(1, 13) * 64 + 32;
			y = irandom_range(1, 10) * 64 + 32;
		} until ( point_distance(x, y, pc.x, pc.y) > 128 );
		xTar = x; yTar = y; xSpeed = 0; ySpeed = 0;
		shootCD = 0;
		return;
	}
	
	if(driftMove == Move.randomPoint){
		xTar = irandom_range(32, ww.roomWidth - 32);
		yTar = irandom_range(32, room_height - 32);
	}
	
	if(driftMove == Move.avoid){
		do {
			xTar = irandom_range(32, ww.roomWidth - 32);
			yTar = irandom_range(32, room_height - 32);
		} until (
			(point_distance(xTar, yTar, pc.x, pc.y) > room_width / 2 &&
			(
				(pc.x < x && pc.x < xTar) ||
				(pc.x > x && pc.x > xTar) ||
				(pc.y < y && pc.y < yTar) ||
				(pc.y > y && pc.y > yTar)
				
			)) || (irandom_range(1, 100) == 1)
		);
	}
	
	if(driftMove == Move.stayTop){
		xTar = irandom_range(32, ww.roomWidth - 32);
		yTar = irandom_range(32, 178);
	}
	
	if(driftMove == Move.hunt){
		xTar = pc.x;
		yTar = pc.y;
	}
	
	if(driftMove == Move.huntLine){
		xTar = pc.x; yTar = pc.y;
		if(choose(true, false)){
			xTar = x;
		} else {
			yTar = y;
		}
	}
	
	if(driftMove == Move.huntHalf){
		if(choose(true, false)){
			xTar = pc.x; yTar = pc.y;
		} else {
			xTar = irandom_range(32, ww.roomWidth - 32);
			yTar = irandom_range(32, room_height - 32);	
		}
	}
	
	if(driftMove == Move.huntOff){
		xTar = pc.x + irandom_range(-100, 100);
		yTar = pc.y + irandom_range(-100, 100);
	}
	
	if(driftMove == Move.bull || driftMove == Move.bullTop){
		if(irandom_range(1, 100) < 80){
			xTar = pc.x < x ? 0 : ww.roomWidth;
			yTar = y;
			yGround = pc.y < y ? yGround - 64 : yGround + 64;
			yGround = clamp(yGround, 64, room_height - 64);
			if(driftMove == Move.bullTop){
				yGround = clamp(yGround + choose(64, -64, 0), 64, 6 * 64);
			}
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