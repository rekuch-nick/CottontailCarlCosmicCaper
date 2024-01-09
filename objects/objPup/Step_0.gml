if(ww.state != State.play){ return; }

if(pc.inSpace){
	if(!isMajor || y < room_height / 2){
		y ++;
		if(y > room_height + 20){ instance_destroy(); }
	}
}

if(gotIt){
	pc.coins -= coinPrice;
	
	pc.hp = clamp(pc.hp + hpGain, 0, pc.hpMax);
	pc.mp = clamp(pc.mp + mpGain, 0, pc.mpMax);
	pc.coins = clamp(pc.coins + coinValue, 0, pc.coinsMax);
	pc.bombs = clamp(pc.bombs + bombValue, 0, pc.bombsMax);
	
	if(sprite_index == imgHealingHeart){ pc.eventTrigger[Event.gotHealingHeart] = true; }
	if(sprite_index == imgPupFindShotUpMore){ pc.eventTrigger[Event.gotMonocule] = true; }

	if(sprite_index == imgPupStar){
		pc.eventTrigger[Event.gotStar] = true;
		instance_create_depth(0, 0, ww.layerE, objTornado);
		ww.state = State.warpWind;
		pc.xMap = 20; pc.yMap = 0;
		pc.xWarpPoint = ww.roomWidth / 2; 
		pc.yWarpPoint = (10 * 64 + 32);
		pc.blockMobSpawn = true;
		pc.hp = pc.hpMax;
	} else if(pc.xMap == 20 && pc.yMap == 0){
		instance_create_depth(0, 0, ww.layerE, objTornado);
		ww.state = State.warpWind;
		pc.xMap = 10; pc.yMap = 7;
		pc.xWarpPoint = ww.roomWidth / 2; 
		pc.yWarpPoint = (10 * 64 + 32);
		pc.blockMobSpawn = true;
	}
	
	if(sprite_index == imgPupShotUpWide){ pc.shotPower = Shot.wide; }
	if(sprite_index == imgPupShotUpFast){ pc.shotPower = Shot.rapid; }
	if(sprite_index == imgPupShotUpBurst){ pc.shotPower = Shot.burst; }
	
	if(sprite_index == imgPlayerRang){ pc.wepLevels[0] = max(pc.wepLevels[0], 1); }
	if(sprite_index == imgPlayerStar){ pc.wepLevels[1] = max(pc.wepLevels[1], 1); }
	if(sprite_index == imgPupTorch){ pc.wepLevels[2] = max(pc.wepLevels[2], 1); }
	
	if(sprite_index == imgPlayerShield){ pc.eventTrigger[Event.gotShield] = true; pc.sp = pc.spMax; }
	
	if(sprite_index == imgEgg){
		if(pc.spaceLevel == 1){ pc.eventTrigger[Event.palace1Clear] = true; }
		if(pc.spaceLevel == 2){ pc.eventTrigger[Event.palace2Clear] = true; }
		if(pc.spaceLevel == 3){ pc.eventTrigger[Event.palace3Clear] = true; }
		if(pc.spaceLevel == 4){ pc.eventTrigger[Event.palace4Clear] = true; }
		if(pc.spaceLevel == 5){ pc.eventTrigger[Event.palace5Clear] = true; }
		if(pc.spaceLevel == 6){ pc.eventTrigger[Event.palace6Clear] = true; }
		if(pc.spaceLevel == 7){ pc.eventTrigger[Event.palace7Clear] = true; }
		if(pc.spaceLevel == 8){ pc.eventTrigger[Event.palace8Clear] = true; }
		if(pc.spaceLevel == 9){ pc.eventTrigger[Event.palace9Clear] = true; }
	}

	instance_destroy();
	
}



if(coinPrice > 0){
	if( 
			abs(pc.xTile - floor(x / 64)) <= 1 && 
			(pc.yTile - floor(y / 64) == 0 || pc.yTile - floor(y / 64) == 1 || pc.yTile - floor(y / 64) == 2 ) 
		){
		ww.txt = desc;
	}
	
}





