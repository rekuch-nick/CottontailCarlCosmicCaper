if(ww.state != State.play){ return; }

if(pc.inSpace){
	if(!isMajor || y < room_height / 2){
		y ++;
		if(y > room_height + 20){ instance_destroy(); }
	}
}

if(sprite_index == imgCoin && (pc.inOverworld || pc.inSpace) && pc.eventTrigger[Event.gotMagnet]){
	if(x > pc.x){ x --; }
	if(x < pc.x){ x ++; }
	if(y > pc.y){ y --; }
	if(y < pc.y){ y ++; }
}

if((sprite_index == imgPupHPOrb || sprite_index == imgPupMPOrb || sprite_index == imgPupBPOrb) && pc.eventTrigger[Event.gotPinwheel] && pc.windUP){
	if(x > pc.x){ x -= 17; }
	if(x < pc.x){ x += 17; }
	if(y > pc.y){ y -= 17; }
	if(y < pc.y){ y += 17; }
}

if(slowFall != noone){
	if(y < slowFall){
		y += 2;
	}
}

if(gotIt){
	
	if(sprite_index == imgCoin && !pc.inOverworld && !pc.inSpace){
		ww.caveCoins[pc.xMap, pc.yMap] --;
	}
	
	pc.coins -= coinPrice;
	
	pc.hp = clamp(pc.hp + hpGain, 0, pc.hpMax);
	pc.mp = clamp(pc.mp + mpGain, 0, pc.mpMax);
	pc.bp = clamp(pc.bp + bpGain, 0, pc.bpMax);
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
		pc.fullHealing = true;
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
	
	//if(sprite_index == imgPlayerRang){ pc.wepLevels[0] = max(pc.wepLevels[0], 1); }
	if(sprite_index == imgPlayerStar){ pc.wepLevels[1] = max(pc.wepLevels[1], 1); pc.eventTrigger[Event.gotStars] = true; }
	if(sprite_index == imgPupTorch){ pc.wepLevels[2] = max(pc.wepLevels[2], 1); pc.eventTrigger[Event.gotTorch] = true; }
	
	if(sprite_index == imgPupWindStone){ pc.wepLevels[4] = max(pc.wepLevels[4], 1); pc.eventTrigger[Event.gotWindStone] = true; }
	if(sprite_index == imgPupIceStone){ pc.wepLevels[5] = max(pc.wepLevels[5], 1); pc.eventTrigger[Event.gotIceStone] = true; }
	
	if(sprite_index == imgPupHole){ pc.wepLevels[7] = max(pc.wepLevels[7], 1); pc.eventTrigger[Event.gotHole] = true; }
	if(sprite_index == imgPupWand){ pc.wepLevels[8] = max(pc.wepLevels[8], 1); pc.eventTrigger[Event.gotWand] = true; }
	if(sprite_index == imgPupPhiloStone){ pc.wepLevels[10] = max(pc.wepLevels[10], 1); pc.eventTrigger[Event.gotPhiloStone] = true; }
	
	if(sprite_index == imgPlayerShield){ pc.eventTrigger[Event.gotShield] = true; pc.sp = pc.spMax; }
	
	if(sprite_index == imgEgg){
		pc.fullHealing = true;
		if(pc.spaceLevel == 1){ pc.eventTrigger[Event.palace1Clear] = true; }
		if(pc.spaceLevel == 2){ pc.eventTrigger[Event.palace2Clear] = true; }
		if(pc.spaceLevel == 3){ pc.eventTrigger[Event.palace3Clear] = true; }
		if(pc.spaceLevel == 4){ pc.eventTrigger[Event.palace4Clear] = true; }
		if(pc.spaceLevel == 5){ pc.eventTrigger[Event.palace5Clear] = true; }
		if(pc.spaceLevel == 6){ pc.eventTrigger[Event.palace6Clear] = true; }
		if(pc.spaceLevel == 7){ pc.eventTrigger[Event.palace7Clear] = true; }
		if(pc.spaceLevel == 8){ pc.eventTrigger[Event.palace8Clear] = true; }
		if(pc.spaceLevel == 9){ pc.eventTrigger[Event.palace9Clear] = true; }
		if(pc.spaceLevel == 10){ pc.eventTrigger[Event.palace10Clear] = true; }
		if(pc.spaceLevel == 11){ pc.eventTrigger[Event.palace11Clear] = true; }
	}
	
	if(sprite_index == imgMap){ pc.eventTrigger[Event.gotMap] = true; }
	
	if(sprite_index == imgPupChargeCharm){ pc.eventTrigger[Event.gotChargeShot] = true; }
	if(sprite_index == imgPupChargeCharm2){ pc.eventTrigger[Event.gotChargeShot2] = true; pc.eventTrigger[Event.gotChargeShot] = true; }
	if(sprite_index == imgPupMightCharm){ pc.eventTrigger[Event.gotMightShot] = true; }
	if(sprite_index == imgPupMightCharm2){ pc.eventTrigger[Event.gotMightShot2] = true; pc.eventTrigger[Event.gotMightShot] = true; }
	if(sprite_index == imgPupSpeedCharm){ pc.eventTrigger[Event.gotSpeedShot] = true; }
	if(sprite_index == imgPupSpeedCharm2){ pc.eventTrigger[Event.gotSpeedShot2] = true; pc.eventTrigger[Event.gotSpeedShot] = true; }
	if(sprite_index == imgPupMoreCharm){ pc.eventTrigger[Event.gotMoreShot] = true; }
	if(sprite_index == imgPupMoreCharm2){ pc.eventTrigger[Event.gotMoreShot2] = true; pc.eventTrigger[Event.gotMoreShot] = true; }
	
	if(sprite_index == imgPupMPShell){ pc.eventTrigger[Event.gotMPShell] = true; }
	if(sprite_index == imgPupMagnet){ pc.eventTrigger[Event.gotMagnet] = true; }
	if(sprite_index == imgPupRubberBand){ pc.eventTrigger[Event.gotRubberBand] = true; }
	if(sprite_index == imgPlayerRang2){ pc.eventTrigger[Event.gotRang2] = true; }
	
	if(sprite_index == imgPupHoneycomb){ pc.eventTrigger[Event.gotHoneycomb] = true; }
	if(sprite_index == imgPupCauldren1){ pc.eventTrigger[Event.gotCauldren1] = true; }
	if(sprite_index == imgPupCauldren2){ 
		pc.eventTrigger[Event.gotCauldren1] = true; 
		pc.eventTrigger[Event.gotCauldren2] = true; 
	}
	if(sprite_index == imgPupCauldren3){ 
		pc.eventTrigger[Event.gotCauldren1] = true; 
		pc.eventTrigger[Event.gotCauldren2] = true; 
		pc.eventTrigger[Event.gotCauldren3] = true; 
	}
	
	if(sprite_index == imgPlayerRangPack){ pc.eventTrigger[Event.gotRangPack] = true; pc.rangsMax = 3; }
	
	if(sprite_index == imgPupPotionFire || sprite_index == imgPupPotionPoison){
		if(pc.potion == noone){ pc.potion = sprite_index; } else { potionUse(sprite_index); }
	}
	
	if(sprite_index == imgCarrot){
		pc.hp += 5; pc.hpMax += 5;
		pc.eventTrigger[eventNumber] = true;
		with(objTile){ if(sprite_index == imgNPCFox){
			ww.txt = "";
			instance_create_depth(x, y, ww.layerE, objFoxGo);
			instance_destroy();
		}}
	}
	

	instance_destroy();
	
}



if(coinPrice > 0 && desc != ""){
	if( 
			abs(pc.xTile - floor(x / 64)) <= 1 && 
			(pc.yTile - floor(y / 64) == 0 || pc.yTile - floor(y / 64) == 1 || pc.yTile - floor(y / 64) == 2 ) 
		){
		ww.txt = desc;
	}
	
}





