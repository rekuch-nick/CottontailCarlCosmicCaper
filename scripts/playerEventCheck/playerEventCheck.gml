function playerEventCheck(){
	
	timeOnScreen = clamp(timeOnScreen + 1, 0, 18001);
	
	if(pc.xMap == 14 && pc.yMap == 8 && inOverworld){
		if(ww.bmap[0, 8] != noone &&
			ww.bmap[0, 9] != noone &&
			ww.bmap[14, 8] != noone &&
			ww.bmap[14, 9] != noone ){
			instance_destroy(ww.bmap[7, 6]);
			ww.secExposed[pc.xMap, pc.yMap] = true; 
		}
	}
	
	
	if(pc.xMap == 4 && pc.yMap == 9 && inOverworld){
		if(ww.bmap[6, 0] != noone &&
			ww.bmap[7, 0] != noone &&
			ww.bmap[8, 0] != noone &&
			ww.bmap[14, 4] != noone &&
			ww.bmap[14, 5] != noone &&
			ww.bmap[14, 6] != noone &&
			ww.bmap[14, 7] != noone &&
			ww.bmap[2, 1] != noone
								){
			instance_destroy(ww.bmap[2, 1]);
			ww.secExposed[pc.xMap, pc.yMap] = true; 
			playSfx(sfxFinddoor);
		}
	}
	
	if(pc.xMap == 11 && pc.yMap == 11 && inOverworld && ww.txt != ""){
		if(!pc.eventTrigger[Event.gotFeather] && pc.hpMax >= 200){
			if(timeOnScreen >= 900){//900){
				ww.txt = "";
				with(objBlock){
					if(sprite_index == imgNPCEagle || sprite_index == imgBlank){
						if(sprite_index == imgNPCEagle){
							instance_create_depth(x, y, ww.layerM, objMobEagle);
						}
						ww.bmap[floor(x/64), floor(y/64)] = noone;
						instance_destroy();
					}
				}
			}
		}
	}
	
	if(		ww.inBiome == Zone.waste && 
			timeOnScreen % 60 == 0 &&
			( ( instance_number(objMob) < 10 && instance_number(objMob) > 0 ) || irandom_range(1, 10) == 1 )
			){
			
		//mobSpawn()
		var a = irandom_range(1, 13);
		var b = irandom_range(1, 10);
		var s = instance_create_depth(a * 64 + 32, b * 64 + 32, ww.layerM - 1, objShadow);
		s.mobKind = objMobWormWaste;
	}
	
	if(!pc.eventTrigger[Event.gotBird] && pc.xMap == 13 && pc.yMap == 1 && pc.xTile == 11 && pc.yTile == 4 && pc.birdSceneStep == 0 && lowestPalaceCleared() >= 11){
		pc.birdSceneTime = 0;
		pc.birdSceneStep = 1;
		ww.state = State.birdScene;
	}
	if(!pc.eventTrigger[Event.gotBird] && pc.xMap == 13 && pc.yMap == 1 && pc.birdSceneStep == 4){
		if(pc.birdSceneTime == 30 * 10 * 7){ ////
			with(objEggWob){ instance_destroy(); }
			for(var i=0; i<15; i++){
				var l = instance_create_depth(i * 64 + 32, 11 * 64, ww.layerE, objLightning);
				l.image_angle = 90;
			}
			with(objMobShot){ instance_destroy(); }
			pc.eventTrigger[Event.gotBird] = true;
			with(objMob){ if(object_index = objMobDarkness){
				regen = 0;
				hpMax = 1000;
				hp = clamp(hp, 1, hpMax);
				specCDMax -= 10;
				shootCDMax -= 10;
			}}
		}
	}
	
	if(pc.eventTrigger[Event.gotKeyCard] && pc.yMap == 4){
		if(!ww.usedKeyCard && (pc.y > 200 && pc.y < room_height - 200) ){
			var doIt = false;
			
			if(pc.xMap == 0){
				if(pc.x < 140){
					doIt = true;
				}
			}
			if(pc.xMap == 18){
				if(pc.x > ww.roomWidth - 140){
					doIt = true;
				}
			}
			
			if(doIt){
				ww.usedKeyCard = true;
				with(objBlock){
					if(sprite_index == imgVaultDoor){
						var e = instance_create_depth(x + 32, y + 64, ww.layerE, objChip);
						e.sprite_index = sprite_index;
					}
					if(sprite_index == imgVaultDoor || sprite_index == imgBlank){
						ww.bmap[floor(x/64), floor(y/64)] = noone;
						instance_destroy();
					}
				}
				
			}
		}
	}
	
	
	if(pc.eventTrigger[Event.gotBird] && pc.xMap == 18 && pc.yMap == 7 && !pc.inSpace){
		if(instance_number(objStarWave) > 0 && instance_number(objMob) < 1){
			instance_create_depth(0, 0, -8001, objScreenWin);
			ww.state = State.win;
		}
	}
	
	if(pc.eventTrigger[Event.gotBird] && pc.xMap == 18 && pc.yMap == 7 && !pc.inSpace){
		if(pc.x > 12 * 64 + 16){
			if(pc.y > 5 * 64 && pc.y < 7 * 64){
				pc.inOverworld = false;
				pc.spaceLevel = 12;
				ww.state = State.enteringSpace;
				pc.xCave = 11 * 64;
				pc.yCave = pc.y;
			}
		}
	}
	
}