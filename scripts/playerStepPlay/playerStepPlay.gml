function playerStepPlay(){
	if(ww.txtTime < 30 * 30){ ww.txtTime += 2; }
	
	
	if(!blockInput && bagPressed){
		playerLoadInventory();
		return;
	}
	windUP = false;
	
	
	if(inSpace){ playerStepPlaySpace(); }
	
	
	
	
	
	
	
	if(xIn < 0 && image_xscale > 0){ image_xscale *= -1; }
	if(xIn > 0 && image_xscale < 0){ image_xscale *= -1; }
	
	
	
	var spd = moveSpeed;
	if(debug){ spd *= 4; }
	if(xIn != 0 && yIn != 0){
		spd /= 1.4;
	}
	if(stunTime > 0){ spd = 0; }
	
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
	
	
	
	
	if(pushingTime > 3 && !inSpace){
		
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
			playerKillMemoryUpdate();
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
	
	
	
	
	
	
	
		// beams
	if(shootCD > 0){ shootCD --; }
	if(stunTime > 0 && shootCD < 1){ shootCD = 1; }
	if(mouseLHold){
		if(mouse_x < x && image_xscale > 0){ image_xscale *= -1; }
		if(mouse_x > x && image_xscale < 0){ image_xscale *= -1; }
		if(shootCD < 1){
			beamChargeCD = 90;
			shootCD = shootCDMax;
			if(pc.shotPower == Shot.rapid){ shootCD -= 10; }
			if(eventTrigger[Event.gotSpeedShot]){ shootCD -= 5; }
			if(eventTrigger[Event.gotSpeedShot2]){ shootCD -= 5; }
			var n = pc.shotAmount;
			if(pc.shotPower == Shot.wide){ n += 2; }
			var xo = image_xscale > 0 ? 20 : -20;
			for(var i=0; i<n; i++){
				var s = instance_create_depth(x + xo, y - 12, ww.layerE, objPlayerBeams);
				var nn = ceil(i / 2) * 2;
				if(i % 2 == 1){ nn *= -1; }
				s.offSet = nn;
				if(bp >= bpThresh){ s.sprite_index = imgPlayerBeamsCharged; }
			}
			bp = clamp(bp - 15, 0, bpMax);
			if(wepSelected == 5 && wepLevels[5] > 0 && irandom_range(1, 100) < 60){
				instance_create_depth(x + xo, y - 12, ww.layerE, objPlayerIceShotSmall);
			}
		}
		
	} else if(mouseRHold){
		if(mouse_x < x && image_xscale > 0){ image_xscale *= -1; }
		if(mouse_x > x && image_xscale < 0){ image_xscale *= -1; }
		
			//boomarangs
		var rangMax = eventTrigger[Event.gotRangPack] ? 3 : 1;	
		if(wepSelected == 0 && wepLevels[0] > 0 && shootCD < 1 && 
							instance_number(objPlayerRang) < rangMax &&
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
		
			//bombs
		if(wepSelected == 3 && wepLevels[3] > 0 && shootCD < 1 && bombs > 0){
				shootCD = wepCDMax[wepSelected];
				bombs --;
				instance_create_depth(x, y, ww.layerE, objPlayerBomb);
		}
		
			//windstone
		if(wepSelected == 4 && wepLevels[4] > 0 && shootCD < 1 && mp >= wepCost[wepSelected]){
				shootCD = wepCDMax[wepSelected];
				mp -= wepCost[wepSelected];
				windAngle += 10;
				if(windAngle > 360){ windAngle -= 360; }
				windUP = true;
				with(objMobShot){ if(isWindDeflectable){
					if(point_distance(x, y, pc.x, pc.y) < 128){
						instance_create_depth(x, y, ww.layerE, objShotDeflected);
						instance_destroy();
					}
				}}
		}
		
			//icestone
		if(wepSelected == 5 && wepLevels[5] > 0 && shootCD < 1 && mp >= wepCost[wepSelected]){
				shootCD = wepCDMax[wepSelected];
				mp -= wepCost[wepSelected];
				
				var a = mouse_x; var b = mouse_y;
				var angle = arctan2(b - y, a - x);
				var aa = cos(angle) * 100;
				var bb = sin(angle) * 100;
				while(inBoundsPoint(a, b)){ a += aa; b += bb; }
				xIceTar = a; yIceTar = b;
				iceFace = image_xscale > 0 ? 1 : -1;
				instance_create_depth(x, y, ww.layerE, objPlayerColdBlast);
				
		}
		
		
			
			
		
		
	}
	
	if(potPressed && potion != noone){
		potionUse(potion);
		potion = noone;
	}
	
	if(hurtTime > 0){ hurtTime --; }
	if(stunTime > 0){ stunTime --; }
	
	
	playerFreezeWater();
	
	
	
	//check for stairs
	xTile = floor(x / 64);
	yTile = floor(y / 64);
	if(inOverworld && !debug){
		if(xTile >= 0 && yTile >= 0 && xTile < 15 && yTile < 12){
			if(ww.fmap[xTile, yTile] != noone && ww.fmap[xTile, yTile].sprite_index == imgDoorway){
				playerKillMemoryUpdate();
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
					if(xMap == 7 && yMap == 1){ spaceLevel = 2; }
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
	if(eventTrigger[Event.gotMPShell]){ mpGain += .01; }
	mp = clamp(mp + mpGain, 0, mpMax);
	
	if(eventTrigger[Event.gotShield]){
		sp = clamp(sp + 1, -900, spMax);
	}
	
	if(eventTrigger[Event.gotChargeShot]){
		if(beamChargeCD > 0){ beamChargeCD --; } else {
			bp = clamp(bp + 1, 0, bpMax);
		}
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