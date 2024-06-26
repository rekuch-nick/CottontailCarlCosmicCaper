if(ww.state != State.play && ww.state != State.surfGame && ww.state != State.jumpGame){ return; }

if(pc.inSpace || ww.state == State.jumpGame){
	if(isMajor && y > room_height - 128){ y --; }
	
	if(!isMajor || y < room_height / 2){
		y ++;
		if(y > room_height + 20){ instance_destroy(); }
	}
}

if(waveScroll){
	x -= 2;
	if(x < -60){ instance_destroy(); }
}

if(sprite_index == imgCoin && (pc.inOverworld || pc.inSpace) && pc.eventTrigger[Event.gotMagnet]){
	if(x > pc.x){ x --; }
	if(x < pc.x){ x ++; }
	if(y > pc.y){ y --; }
	if(y < pc.y){ y ++; }
} else if (moveToPlayer){
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
	pc.coins = clamp(pc.coins + coinValue, 0, coinsMax());
	pc.bombs = clamp(pc.bombs + bombValue, 0, bombsMax());
	
	if(surfTime != 0){
		pc.surfTime = clamp(pc.surfTime + surfTime, 0, pc.surfTimeMax);
	}
	
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
	} else if(pc.xMap == 20){
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
	if(sprite_index == imgPupOrbit){ pc.wepLevels[6] = max(pc.wepLevels[6], 1); pc.eventTrigger[Event.gotOrbit] = true; }
	if(sprite_index == imgPupOrbit2){ pc.wepLevels[6] = max(pc.wepLevels[6], 1); pc.eventTrigger[Event.gotOrbit2] = true; }
	if(sprite_index == imgPupSword){ pc.wepLevels[9] = max(pc.wepLevels[9], 1); pc.eventTrigger[Event.gotSword] = true; }
	
	if(sprite_index == imgPupWindStoneCrack){ pc.wepLevels[4] = max(pc.wepLevels[4], 1); pc.eventTrigger[Event.gotWindStone] = true; }
	if(sprite_index == imgPupWindStone){ pc.wepLevels[4] = max(pc.wepLevels[4], 1); pc.eventTrigger[Event.gotWindStone] = true; pc.eventTrigger[Event.gotWindStone2] = true; }
	if(sprite_index == imgPupIceStone){ pc.wepLevels[5] = max(pc.wepLevels[5], 1); pc.eventTrigger[Event.gotIceStone] = true; }
	
	if(sprite_index == imgPupHole){ pc.wepLevels[7] = max(pc.wepLevels[7], 1); pc.eventTrigger[Event.gotHole] = true; }
	if(sprite_index == imgPupWand){ pc.wepLevels[8] = max(pc.wepLevels[8], 1); pc.eventTrigger[Event.gotWand] = true; }
	if(sprite_index == imgPupPhiloStone){ pc.wepLevels[10] = max(pc.wepLevels[10], 1); pc.eventTrigger[Event.gotPhiloStone] = true; }
	
	if(sprite_index == imgPlayerShield){ pc.eventTrigger[Event.gotShield] = true; pc.sp = pc.spMax; }
	if(sprite_index == imgPlayerShield2){ pc.eventTrigger[Event.gotShield2] = true; pc.eventTrigger[Event.gotShield] = true; pc.sp = pc.spMax; }
	if(sprite_index == imgPlayerShield3){ pc.eventTrigger[Event.gotShield3] = true; pc.eventTrigger[Event.gotShield2] = true; pc.eventTrigger[Event.gotShield] = true; pc.sp = pc.spMax; }
	
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
	
	if(sprite_index == imgRocket){ 
		with(objMob){ instance_destroy(); }
		with(objPup){ instance_destroy(); }
		with(objEffect){ instance_destroy(); }
		with(objStar){ ySpeed *= 3; }
		ww.state = State.rocketing; 
	}
	
	if(sprite_index == imgSharkWhistle){ pc.eventTrigger[Event.gotWhistle] = true; }
	if(sprite_index == imgWhetstone){ pc.eventTrigger[Event.gotWhetstone] = true; }
	if(sprite_index == imgPupShoe){ pc.eventTrigger[Event.gotShoe] = true; }
	if(sprite_index == imgPupWorkPass){ pc.eventTrigger[Event.gotWorkPass] = true; }
	if(sprite_index == imgPupChargeCharm){ pc.eventTrigger[Event.gotChargeShot] = true; }
	if(sprite_index == imgPupChargeCharm2){ pc.eventTrigger[Event.gotChargeShot2] = true; pc.eventTrigger[Event.gotChargeShot] = true; }
	if(sprite_index == imgPupMightCharm){ pc.eventTrigger[Event.gotMightShot] = true; }
	if(sprite_index == imgPupMightCharm2){ pc.eventTrigger[Event.gotMightShot2] = true; pc.eventTrigger[Event.gotMightShot] = true; }
	if(sprite_index == imgPupSpeedCharm){ pc.eventTrigger[Event.gotSpeedShot] = true; }
	if(sprite_index == imgPupSpeedCharm2){ pc.eventTrigger[Event.gotSpeedShot2] = true; pc.eventTrigger[Event.gotSpeedShot] = true; }
	if(sprite_index == imgPupMoreCharm){ pc.eventTrigger[Event.gotMoreShot] = true; }
	if(sprite_index == imgPupMoreCharm2){ pc.eventTrigger[Event.gotMoreShot2] = true; pc.eventTrigger[Event.gotMoreShot] = true; }
	
	if(sprite_index == imgPupMPShell){ pc.eventTrigger[Event.gotMPShell] = true; }
	if(sprite_index == imgPupMPShell2){ pc.eventTrigger[Event.gotMPShell2] = true; pc.eventTrigger[Event.gotMPShell] = true; }
	if(sprite_index == imgPupMagnet){ pc.eventTrigger[Event.gotMagnet] = true; }
	if(sprite_index == imgPupRubberBand){ pc.eventTrigger[Event.gotRubberBand] = true; }
	if(sprite_index == imgPlayerRang2){ pc.eventTrigger[Event.gotRang2] = true; }
	if(sprite_index == imgPlayerRang3){ pc.eventTrigger[Event.gotRang2] = true; pc.eventTrigger[Event.gotRang3] = true; }
	if(sprite_index == imgPlayerRang4){ pc.eventTrigger[Event.gotRang2] = true; pc.eventTrigger[Event.gotRang3] = true; pc.eventTrigger[Event.gotRang4] = true; }
	
	if(sprite_index == imgPowderHorn){ pc.eventTrigger[Event.gotPowderHorn] = true; }
	if(sprite_index == imgPowderHorn2){ pc.eventTrigger[Event.gotPowderHorn2] = true; pc.eventTrigger[Event.gotPowderHorn] = true; }
	
	if(sprite_index == imgPupScope){ pc.eventTrigger[Event.gotFarShot] = true; }
	if(sprite_index == imgPlayerDupe){ pc.eventTrigger[Event.gotDoll] = true; }
	if(sprite_index == imgTadpole){ pc.eventTrigger[Event.gotFrog] = true; }
	if(sprite_index == imgPupBlueBead){ pc.eventTrigger[Event.gotBlueBead] = true; }
	if(sprite_index == imgPupGreenFlake){ pc.eventTrigger[Event.gotGreenFlake] = true; }
	if(sprite_index == imgPupSpikeBangle){ pc.eventTrigger[Event.gotSpikeBangle] = true; }
	if(sprite_index == imgPupWax){ pc.eventTrigger[Event.gotWax] = true; }
	if(sprite_index == imgPupKeyCard){ pc.eventTrigger[Event.gotKeyCard] = true; }
	if(sprite_index == imgPupFeather){ pc.eventTrigger[Event.gotFeather] = true; }
	if(sprite_index == imgLuckyCoin){ pc.eventTrigger[Event.gotLuckyCoin] = true; }
	if(sprite_index == imgPupChair){ pc.eventTrigger[Event.gotChair] = true; }
	if(sprite_index == imgPupPinwheel){ pc.eventTrigger[Event.gotPinwheel] = true; }
	if(sprite_index == imgPupGlasses){ pc.eventTrigger[Event.gotGlasses] = true; }
	if(sprite_index == imgPupPoisonVial){ pc.eventTrigger[Event.gotPoisonVial] = true; }
	if(sprite_index == imgBombBag){ pc.eventTrigger[Event.gotBombBag] = true; pc.bombs = bombsMax(); }
	if(sprite_index == imgPupOil){ pc.eventTrigger[Event.gotOil] = true; }
	if(sprite_index == imgCoinBag){ pc.eventTrigger[Event.gotCoinBag] = true; }
	if(sprite_index == imgPupCross){ pc.eventTrigger[Event.gotCross] = true; }
	if(sprite_index == imgPupDiscountCard){ pc.eventTrigger[Event.gotDiscountCard] = true; }
	if(sprite_index == imgPupCape){ 
		pc.eventTrigger[Event.gotShield] = true; pc.sp = pc.spMax;
		pc.eventTrigger[Event.gotCape] = true; }
	if(sprite_index == imgPupCape2){ 
		pc.eventTrigger[Event.gotShield] = true; pc.sp = pc.spMax;
		pc.eventTrigger[Event.gotCape2] = true; pc.eventTrigger[Event.gotCape] = true; }
	if(sprite_index == imgPupCrowbar){ pc.eventTrigger[Event.gotCrowbar] = true; }
	
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
	
	if(sprite_index == imgPupPaperTac){ ww.txtTime = 0; pc.frogBuys ++; ww.txt = paperTac(); }
	
	if(sprite_index == imgPupStrangePaw){ pc.eventTrigger[Event.gotStrangePaw] = true; pc.mpMax += 100; pc.mp = pc.mpMax; }
	
	if(sprite_index == imgPupRing){ pc.eventTrigger[Event.gotRing1] = true; }
	if(sprite_index == imgPupRing2){ 
		pc.eventTrigger[Event.gotRing1] = true; pc.eventTrigger[Event.gotRing2] = true; 
	}
	if(sprite_index == imgPupRing3){ 
		pc.eventTrigger[Event.gotRing1] = true; pc.eventTrigger[Event.gotRing2] = true; pc.eventTrigger[Event.gotRing3] = true; 
	}
	
	if(sprite_index == imgPlayerRangPack){ pc.eventTrigger[Event.gotRangPack] = true; pc.rangsMax = 3; }
	
	if(sprite_index == imgPupPotionFire || sprite_index == imgPupPotionPoison || sprite_index == imgPupPotionStun){
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
	
	if(sprite_index == imgCarrotPile){
		pc.hp += 45; pc.hpMax += 45;
		pc.eventTrigger[eventNumber] = true;
	}
	
	if(sprite_index == imgTripCarrot){
		pc.hp += 15; pc.hpMax += 15;
		pc.eventTrigger[eventNumber] = true;
	}
	
	
	if(sprite_index == imgPupSwordInStone){
		for(var a=4; a<11; a++){
			ww.bmap[a, 0] = instance_create_depth(a * 64, 0, ww.layerB, objBlock);
			ww.bmap[a, 0].sprite_index = imgRockWall;
		}
		instance_create_depth(ww.roomWidth / 2, 128, ww.layerM, objMobBearSwordBoss);
	}
	
	if(sprite_index == imgPupSword){
		for(var a=4; a<11; a++){
			instance_destroy(ww.bmap[a, 0]);
			ww.bmap[a, 0] = noone;
		}
	}
	
	if(sprite_index == imgPupSurfboard){
		ww.state = State.surfStart;
	}
	if(sprite_index == imgPupPick){
		pc.digStage = 0;
		ww.state = State.digStart; /////
	}
	if(sprite_index == imgPupTramp){
		ww.state = State.jumpStart; /////
	}
	
	playSfx(collectionSound);
	
	var e = instance_create_depth(x, y, ww.layerE, objEffect);
	e.ySpeed = -2; e.fade = .03;
	e.sprite_index = sprite_index;

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





