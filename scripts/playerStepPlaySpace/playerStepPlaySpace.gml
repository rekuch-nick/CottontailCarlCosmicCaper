function playerStepPlaySpace(){
	
	if(pc.spaceLevel == 12){
		instance_create_depth(ww.roomWidth, irandom_range(0, room_height - 1), 0, objStarWave);
	} else {
		instance_create_depth(irandom_range(1, ww.roomWidth - 1), -1, 0, objStar);
	}
	
	
	if(eventTrigger[Event.gotHoneycomb]){
		if(instance_number(objPlayerBee) < 2){
			if(irandom_range(1, 600) == 1){
				var xo = -64; with(objPlayerBee){ if(xo == xOff){ xo = 64; } }
				var bee = instance_create_depth(x, room_height, ww.layerE + 1, objPlayerBee);
				bee.xOff = xo;
				bee.image_xscale = instance_number(objPlayerBee) == 1 ? -4 : 4;
			}
		}
	}
	
	
	
	if(newWave){
		newWave = false;
		wave = palaceWaves[palaceWave];
		
		spawnCD = wave.waitBetweenMobs;
		rockCDMax = wave.rockWait;
		rockCD = rockCDMax;
		
		for(var i=0; i<array_length(wave.initMobs); i++){
			instance_create_depth(irandom_range(1, 13) * 64 + 32, 0, ww.layerM, wave.initMobs[i]);
		}
		if(wave.floorItem != noone){
			instance_create_depth(ww.roomWidth / 2, 0, ww.layerP, wave.floorItem);
		}
		
		return;
	}
	
	
	if(wave.rockKind != noone){
		rockCD --;
		if(rockCD < 1){
			rockCD = rockCDMax;
			instance_create_depth(irandom_range(50, room_width-50), -50, ww.layerB - 1, wave.rockKind);
		}
		
		
	}
	
	if(array_length(wave.laterMobs) > 0){
		spawnCD --;
		if(spawnCD < 1 && instance_number(objFrankToSkellyFace) > 0){ spawnCD = 1; }
		if(pc.debug){ spawnCD = 0; }
		if(spawnCD < 1){
			spawnCD = wave.waitBetweenMobs;
			instance_create_depth(irandom_range(1, 13) * 64 + 32, 0, ww.layerM, wave.laterMobs[0]);
			wave.laterMobs = arrayDropFirst(wave.laterMobs);
		}
	}
	
	
	//check for wave over
	var waveOver = instance_number(objMob) == 0 && array_length(wave.laterMobs) == 0;
	if(wave.waitForPups){ if(instance_number(objPup) > 0){ waveOver = false; } }
	
	if(waveOver){
		palaceWave ++;
		if(palaceWave < array_length(palaceWaves)){
			newWave = true;
		} else {
			
			//if(spaceLevel == 1){ eventTrigger[Event.palace1Clear] = true; }
			//if(spaceLevel == 2){ eventTrigger[Event.palace2Clear] = true; }
			//if(spaceLevel == 3){ eventTrigger[Event.palace3Clear] = true; }
			//if(spaceLevel == 4){ eventTrigger[Event.palace4Clear] = true; }
			//if(spaceLevel == 5){ eventTrigger[Event.palace5Clear] = true; }
			//if(spaceLevel == 6){ eventTrigger[Event.palace6Clear] = true; }
			//if(spaceLevel == 7){ eventTrigger[Event.palace7Clear] = true; }
			//if(spaceLevel == 8){ eventTrigger[Event.palace8Clear] = true; }
			//if(spaceLevel == 9){ eventTrigger[Event.palace9Clear] = true; }
			
			ww.state = State.leaveSpace;
			//playSfx(Comical_Descent);
			with(objEffect){ instance_destroy(); }
			with(objSpaceRock){ instance_destroy(); }
			with(objPup){ instance_destroy(); }
		}
	}
	
}