function playerStepDig(){
	
	pc.timeInDig = min(pc.timeInDig + 1, 30 * 60 * 60 * 2);
	
	pushingOnWall = false;
	
	xSpeed = moveSpeed * xIn;
	if(xSpeed != 0){
		var dir = getDirection(xSpeed);
		image_xscale = 4 * dir;
		for(var i=0; i<abs(xSpeed); i++){
			x += dir;
			if(digPlayerInBlock()){
				x -= dir;
				pushingOnWall = true;
				break;
			}
		}
	}
	xSpot = floor(x / 64);
	ySpot = floor(y / 64);
	
	
	
	if(!digPlayerOnGround()){
		ySpeed ++;
		if(surfJumps == surfJumpsMax){ surfJumps --; }
	} else {
		if(ySpeed > 0){ ySpeed = 0; }
		surfJumps = surfJumpsMax;
	}
	
	//wall slide
	if(xIn != 0 && pushingOnWall && ySpeed > 1){
		if( (xIn < 0 && xSpot > 0) || (xIn > 0 && xSpot < 14) ){
			ySpeed = 1;
			surfJumps = 1;
		}
	}
	
	
	if(surfJumpPressed){ 
		if(surfJumps > 0){
			surfJumps --;
			ySpeed = -20;
		}
	}
	
	//mini jumps
	if(!surfJumpHeld && ySpeed < 0){ ySpeed = 0; }
	
	
	dir = getDirection(ySpeed);
	for(var i=0; i<abs(ySpeed); i++){
		y += dir;
		
		if( dir > 0 && digPlayerOnGround() ){
			break;
		}
		
		if(digPlayerInBlock() ){
			y -= dir;
			break;
		}
		
	}
	
	
	
	//dig
	if(ySpeed == 0 && digPlayerOnGround()){
		if(xIn != 0 xor yIn != 0){
			
			if(xIn < 0 && pushingOnWall && xSpot > 0){
				if(ww.bmap[xSpot-1, ySpot] != noone){
					ww.bmap[xSpot-1, ySpot].hp -= digPow;
				}
			} else if (xIn > 0 && pushingOnWall && xSpot < 14){
				if(ww.bmap[xSpot+1, ySpot] != noone){
					ww.bmap[xSpot+1, ySpot].hp -= digPow;
				}
			} else if (yIn > 0 && ySpot < 11){
				if(ww.bmap[xSpot, ySpot+1] != noone){
					ww.bmap[xSpot, ySpot+1].hp -= digPow;
				}
			}
			
			
		}
	}
	
	
	
	
	
	var goldLeft = 0;
	
	with(objDigBlock){
		if(!seen){
			var ok = false;
			for(var d=0; d<8; d++){
				var a = xSpot; var b = ySpot;
				if(d == 0){ b --; }
				if(d == 1){ a ++; }
				if(d == 2){ b ++; }
				if(d == 3){ a --; }
				if(d == 4){ a--; b--; }
				if(d == 5){ a--; b++; }
				if(d == 6){ a++; b--; }
				if(d == 7){ a++; b++; }
				
				if(b == 2){ ok = true; break; }
				
				if(inBoundsTile(a, b)){
					if(ww.bmap[a, b] == noone){
						ok = true;
						break;
					}
				}
				
			}
			if(ok){
				seen = true;
				sprite_index = img;
				
				if(sprite_index == noone){
					ww.bmap[xSpot, ySpot] = noone;
					instance_destroy();
				}
			}
		}
		
		if(img == imgDigRockGold){ goldLeft ++; }
	}
	if(goldLeft == 0){
		ww.state = State.digStart; //
		pc.digStage ++;
	}
	
	
	
	if(timeInDig > 30){
		var n = 1;
		if(timeInDig > 30 * 15){ 
			var tt = timeInDig + (pc.digStage * 120);
			n = floor(tt / (450) );
			n = min(n, 40);
		}
		if(instance_number(objDigSkelly) < n && irandom_range(1, 60) == 1){
			instance_create_depth(irandom_range(64, ww.roomWidth - 64), 20, ww.layerM, objDigSkelly);
		}
		
	}
	
	
	
	if(digHP < 1){
		
		
		with(objEffect){ instance_destroy(); }
		with(objPup){ instance_destroy(); }
		with(objDigBlock){ instance_destroy(); }
		
		ww.state = State.play;
		x = ww.roomWidth / 2;
		y = room_height - 128;
		image_angle = 0;
		worldLoadRoom(0);
		pc.stunTime = 20;
		
	}

}