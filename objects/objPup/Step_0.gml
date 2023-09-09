if(ww.state != State.play){ return; }


if(gotIt){
	
	pc.hp = clamp(pc.hp + hpGain, 0, pc.hpMax);
	pc.mp = clamp(pc.mp + mpGain, 0, pc.mpMax);
	pc.coins = clamp(pc.coins + coinValue, 0, pc.coinsMax);
	
	if(sprite_index == imgHealingHeart){
		pc.eventTrigger[Event.gotHealingHeart] = true;
	}
	
	if(sprite_index == imgPupShotUpMore){
		pc.eventTrigger[Event.gotMonocule] = true;
	}

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


	instance_destroy();
	
}

