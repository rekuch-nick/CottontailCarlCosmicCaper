function playerStepPlay(){
	if(ww.txtTime < 30 * 30){ ww.txtTime ++; }
	
	
	if(inSpace){ playerStepPlaySpace(); }
	
	
	
		
	
	
	
	if(xIn < 0 && image_xscale > 0){ image_xscale *= -1; }
	if(xIn > 0 && image_xscale < 0){ image_xscale *= -1; }
	
	
	
	var spd = moveSpeed;
	if(xIn != 0 && yIn != 0){
		spd /= 1.4;
	}
	
	xSpeed = xIn * spd;
	ySpeed = yIn * spd;
	
	if(xPush != 0){
		pushingTime = 0;
		xSpeed += xPush;
		if(xPush > 0){ xPush --; }
		if(xPush > 0){ xPush ++; }
	}
	
	if(yPush != 0){
		pushingTime = 0;
		ySpeed += yPush;
		if(yPush > 0){ yPush --; }
		if(yPush > 0){ yPush ++; }
	}
	
	
	
	
	var bumped = false;
	var dir = getDirection(xSpeed);
	var htDir = dir < 0 ? 4 : 2;
	for(var i=0; i<abs(xSpeed); i++){
		x += dir;
		if(!creatureCanBeHereDir(htDir)){
			x -= dir;
			bumped = true;
			break;
		}
	}
	
	var dir = getDirection(ySpeed);
	var htDir = dir < 0 ? 1 : 3;
	for(var i=0; i<abs(ySpeed); i++){
		y += dir;
		if(!creatureCanBeHereDir(htDir)){
			y -= dir;
			bumped = true;
			break;
		}
	}
	
	
	if(bumped){
		pushingTime ++;
	} else {
		pushingTime = 0;
	}
	
	
	
	
	if(pushingTime > 3){
		
		var d = 0;
		if(x <= 0 + xFat){ d = 4; x = ww.roomWidth - 28; }
		else if(x >= ww.roomWidth - xFat - 1){ d = 2; x = 28; }
		else if(y <= 0 + yFat){ d = 1; y = room_height - 28; }
		else if(y >= room_height - yFat - 1){ d = 3; y = 28; }
		
		if(d == 3 && !inOverworld){
			ww.state = State.useStairs;
			return;
		}
		
		
		if(d != 0){
			if(d == 1){ yMap --; }
			if(d == 2){ xMap ++; }
			if(d == 3){ yMap ++; }
			if(d == 4){ xMap --; }
			worldLoadRoom(d);
			scrollTime = room_height;
			scrollDir = d;
			if(d == 2 || d == 4){ scrollTime = ww.roomWidth; }
			ww.state = State.scroll;
		}
	}
	
	
	
	
	
	
	
	
	if(shootCD > 0){ shootCD --; } 
	if(mouseLHold){
		if(mouse_x < x && image_xscale > 0){ image_xscale *= -1; }
		if(mouse_x > x && image_xscale < 0){ image_xscale *= -1; }
		if(shootCD < 1){
			shootCD = shootCDMax;
			if(pc.shotPower == Shot.rapid){ shootCD -= 10; }
			var n = pc.shotAmount;
			if(pc.shotPower == Shot.wide){ n += 2; }
			var xo = image_xscale > 0 ? 20 : -20;
			for(var i=0; i<n; i++){
				var s = instance_create_depth(x + xo, y - 12, ww.layerE, objPlayerBeams);
				var nn = ceil(i / 2) * 2;
				if(i % 2 == 1){ nn *= -1; }
				s.offSet = nn;
			}
		}
		
	} else if(mouseRHold){
		if(mouse_x < x && image_xscale > 0){ image_xscale *= -1; }
		if(mouse_x > x && image_xscale < 0){ image_xscale *= -1; }
		
			//boomarangs
		if(wepSelected == 0 && wepLevels[0] > 0 && shootCD < 1 && 
							instance_number(objPlayerRang) < rangsMax &&
							mp >= wepCost[wepSelected]
			){
				shootCD = wepCDMax[wepSelected];
				mp -= wepCost[wepSelected];
				instance_create_depth(x, y, ww.layerE, objPlayerRang);
			
		}
		
			//stars
		if(wepSelected == 1 && wepLevels[1] > 0 && shootCD < 1 && 
							mp >= wepCost[wepSelected]
			){
				shootCD = wepCDMax[wepSelected];
				mp -= wepCost[wepSelected];
				for(var i=0; i<5; i++){
					var s = instance_create_depth(x, y, ww.layerE, objPlayerStar);
					var nn = ceil(i / 2) * 3;
					if(i % 2 == 1){ nn *= -1; }
					s.offSet = nn;
				}
			
		}
		
			//torch
		if(wepSelected == 2 && wepLevels[2] > 0 && shootCD < 1 && 
							mp >= wepCost[wepSelected]
			){
				shootCD = wepCDMax[wepSelected];
				mp -= wepCost[wepSelected];
				instance_create_depth(x, y, ww.layerE, objPlayerFire);
			
		}
		
			//boomarangs
		if(wepSelected == 3 && wepLevels[3] > 0 && shootCD < 1 && bombs > 0){
				shootCD = wepCDMax[wepSelected];
				bombs --;
				instance_create_depth(x, y, ww.layerE, objPlayerBomb);
		}
		
		
			
			
		
		
	}
	
	if(hurtTime > 0){ hurtTime --; }
	
	
	
	
	//check for stairs
	xTile = floor(x / 64);
	yTile = floor(y / 64);
	if(inOverworld){
		if(xTile >= 0 && yTile >= 0 && xTile < 15 && yTile < 12){
			if(ww.fmap[xTile, yTile] != noone && ww.fmap[xTile, yTile].sprite_index == imgDoorway){
				ww.state = State.useStairs;
				ww.stairAlpha = 0;
			}
		}
	}
	
	if(!inOverworld){
		if(xTile >= 0 && yTile >= 0 && xTile < 15 && yTile < 12){
			if(ww.fmap[xTile, yTile] != noone && ww.fmap[xTile, yTile].sprite_index == imgSpaceDoor){
				if(eventTrigger[Event.gotStar]){
					if(xMap == 8 && yMap == 6){ spaceLevel = 1; }
					if(spaceLevel != 0){
						ww.state = State.enteringSpace;
						xCave = x;
						yCave = y + 64;
					}
				} else {
					mutter = "I can't use a space door without a STAR!";
				}
			}
		}
	}
	
	
	
	if(eventTrigger[Event.gotHealingHeart]){
		hp = clamp(hp + .01, 0, hpMax);
	}
	
	var mpGain = .01;
	mp = clamp(mp + mpGain, 0, mpMax);
	
	if(eventTrigger[Event.gotShield]){
		sp = clamp(sp + 1, -900, spMax);
	}
	
	//animate
	aniCD --;
	if(xIn != 0 || yIn != 0){ aniCD -= 2; }
	if(aniCD < 1){
		aniCD = 20;
		walkFrame = walkFrame == 0 ? 1 : 0;
	}
	if(inSpace){ walkFrame = 1; }
	var f = walkFrame;
	
	image_alpha = 1;
	if(hurtTime > 0){
		f = 10;
		image_alpha = random_range(0, 1);
	}
	
	image_index = f;
	
}