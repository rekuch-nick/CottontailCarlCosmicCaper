function playerStepPlay(){
	if(ww.txtTime < 30 * 30){ ww.txtTime += 2; }
	
	
	if(!blockInput && bagPressed){
		playerLoadInventory();
		return;
	}
	windUP = false;
	
	creatureBuffDecay();
	
	if(inSpace){ playerStepPlaySpace(); }
	
	
	if(invulnTime > 0){ invulnTime --; }
	if(featherCD > 0){ featherCD --; }
	
	
	
	
	if(xIn < 0 && image_xscale > 0){ image_xscale *= -1; }
	if(xIn > 0 && image_xscale < 0){ image_xscale *= -1; }
	
	
	
	var spd = moveSpeed;
	if(slowDown){ spd *= .3; }
	if(hurtTime > 0 && eventTrigger[Event.gotRubberBand]){ spd += 4; }
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
		if(xIn == 0 || yIn == 0){
			var xx = floor(x / 64) + xIn;
			var yy = floor(y / 64) + yIn;
			if(inBoundsTile(xx, yy)){
				xPushBlock = xx;
				yPushBlock = yy;
				pushingBlockTime ++;
				if(eventTrigger[Event.gotCrowbar]){ pushingBlockTime += 3; }
				pushBlockDir = xIn == 1 ? 2 : 4;
				if(yIn == 1){ pushBlockDir = 3; }
				if(yIn == -1){ pushBlockDir = 1; }
			} else { pushingBlockTime = 0; }
		}
	} else {
		pushingTime = 0;
		pushingBlockTime = 0;
	}
	
	
	
	
	if(pushingTime > 3 && !inSpace){
		
		var d = 0;
		if(x <= 1 + xFat){ d = 4; x = ww.roomWidth - 28; }
		else if(x >= ww.roomWidth - xFat - 1){ d = 2; x = 28; }
		else if(y <= 1 + yFat){ d = 1; y = room_height - 28; }
		else if(y >= room_height - yFat - 1){ d = 3; y = 28; }
		
		if(d == 3 && !inOverworld){
			ww.state = State.useStairs;
			return;
		}
		
		
		if(d != 0){
			var inLostHills = pc.xMap == 11 && pc.yMap == 0;
			
			playerKillMemoryUpdate();
			if(d == 1){ yMap --; }
			if(d == 2){ xMap ++; }
			if(d == 3){ yMap ++; }
			if(d == 4){ xMap --; }
			
			
			
			
			//unseen warp conditions
			if(inLostHills && pc.xMap == 12){ pc.xMap = 11; }
			else if(inLostHills && pc.xMap == 10){ pc.xMap = 11; }
			else if(inLostHills && pc.yLostHills > -3 && pc.xMap == 11 && pc.yMap == -1){ pc.yMap = 0; pc.yLostHills --; }
			else if(pc.xMap == 11 && pc.yMap == -1){ pc.yMap = 11; }
			else if(pc.xMap == 11 && pc.yMap == 12){ pc.yMap = 0; }
			
			
			if(	(pc.xMap == 11 && pc.yMap == 1) ||
					(pc.xMap == 10 && pc.yMap == 0) ||
					(pc.xMap == 12 && pc.yMap == 0) ){ pc.xLostHills = 0; pc.yLostHills = 0; }
			
			
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
			var beamType = objPlayerBeams;
			if(wepSelected == 10 && wepLevels[10] > 0 && coins > 0){
				beamType = objPlayerBeamsPhilo;
				coins --;
			} else {
				beamChargeCD = 90;
				bp = clamp(bp - 15, 0, bpMax);
			}
			shootCD = shootCDMax;
			if(pc.shotPower == Shot.rapid){ shootCD -= 10; }
			if(eventTrigger[Event.gotSpeedShot]){ shootCD -= 5; }
			if(eventTrigger[Event.gotSpeedShot2]){ shootCD -= 5; }
			var n = pc.shotAmount;
			if(eventTrigger[Event.gotMoreShot]){ n ++; }
			if(eventTrigger[Event.gotMoreShot2]){ n ++; }
			if(pc.shotPower == Shot.wide){ n += 2; }
			var xo = image_xscale > 0 ? 20 : -20;
			for(var i=0; i<n; i++){
				var s = instance_create_depth(x + xo, y - 12, ww.layerE, beamType);
				var nn = ceil(i / 2) * 2;
				if(i % 2 == 1){ nn *= -1; }
				s.offSet = nn;
				if(bp >= bpThresh && beamType == objPlayerBeams){ s.sprite_index = imgPlayerBeamsCharged; }
				if(eventTrigger[Event.gotMightShot]){ s.pow += 5; }
				if(eventTrigger[Event.gotMightShot2]){ s.pow += 5; }
			}
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
				var t = objPlayerRang;
				if(eventTrigger[Event.gotRang2]){ t = objPlayerRang2; }
				instance_create_depth(x, y, ww.layerE, t);
			
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
				if(eventTrigger[Event.gotOil]){
					instance_create_depth(x, y, ww.layerE, objPlayerFire2);
					repeat(3){ instance_create_depth(x, y, ww.layerE, objPlayerFire); }
				} else {
					instance_create_depth(x, y, ww.layerE, objPlayerFire);
				}
				
			
		}
		
			//bombs
		if(wepSelected == 3 && wepLevels[3] > 0 && shootCD < 1 && bombs > 0){
				shootCD = wepCDMax[wepSelected];
				bombs --;
				instance_create_depth(x, y, ww.layerE, objPlayerBomb);
		}
		
			//windstone
		playerUseWindStone();
		
		
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
			//hole
		if(wepSelected == 7 && wepLevels[7] > 0 && shootCD < 1 && mp >= wepCost[wepSelected]){
				shootCD = wepCDMax[wepSelected];
				mp -= wepCost[wepSelected];
				instance_create_depth(x, y, ww.layerE, objEffPlayerHole);
				
				var angle = arctan2(y - mouse_y, x - mouse_x);
				var aa = cos(angle) * 10;
				var bb = sin(angle) * 10;
				
				pc.x = mouse_x; pc.y = mouse_y;
				while(!creatureCanBeHere(pc)){
					x += aa; y += bb;
				}
				
		}
		playerUseWand();
		
		
		
			
			
		
		
	}
	
	if(potPressed && potion != noone){
		potionUse(potion);
		potion = noone;
		if(eventTrigger[Event.gotCauldren1]){ healingC1 = true; }
		if(eventTrigger[Event.gotCauldren2]){ healingC2 = true; }
		if(eventTrigger[Event.gotCauldren3]){ fullHealing = true; }
	}
	
	if(hurtTime > 0){ hurtTime --; }
	if(stunTime > 0){ stunTime --; }
	slowDown = false;
	
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
					if(xMap == 15 && yMap == 4){ spaceLevel = 3; }
					if(xMap == 4 && yMap == 7){ spaceLevel = 4; }
					if(xMap == 0 && yMap == 9){ spaceLevel = 5; }
					if(xMap == 18 && yMap == 9){ spaceLevel = 6; }
					if(xMap == 0 && yMap == 5){ spaceLevel = 7; }
					if(xMap == 10 && yMap == 0){ spaceLevel = 8; }
					if(xMap == 16 && yMap == 4){ spaceLevel = 9; }
					if(xMap == 4 && yMap == 0){ spaceLevel = 10; }
					if(xMap == 18 && yMap == 1){ spaceLevel = 11; }
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
	
	if(poisonTime > 0){
		hp -= .1;
	} else if(eventTrigger[Event.gotHealingHeart]){
		hp = clamp(hp + .01, 0, hpMax);
	}
	
	var mpGain = .01;
	if(eventTrigger[Event.gotMPShell]){ mpGain += .01; }
	mp = clamp(mp + mpGain, 0, mpMax);
	
	if(eventTrigger[Event.gotShield]){
		var canSlash = false;
		if(sp < spMax && eventTrigger[Event.gotCape]){ canSlash = true; }
		var val = 1;
		if(eventTrigger[Event.gotCape2]){ val += 3; }
		sp = clamp(sp + val, -900, spMax);
		if(sp >= spMax && canSlash){
			playerKnightSlash();
		}
	}
	
	if(eventTrigger[Event.gotChargeShot]){
		if(beamChargeCD > 0){ beamChargeCD --; } else {
			bp = clamp(bp + 1, 0, bpMax);
		}
	}
	
	playerEventCheck();
	
	
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
	
	if(hp < 1){ 
		if(eventTrigger[Event.gotFeather] && featherCD == 0){
			ww.state = State.birdRez;
		} else {
			ww.state = State.dying; 
		}
	}
}