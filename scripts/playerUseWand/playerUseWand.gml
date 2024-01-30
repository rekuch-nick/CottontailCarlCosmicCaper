function playerUseWand(){
	
	if(wepSelected == 8 && wepLevels[8] > 0 && mp >= wepCost[wepSelected]){
		holdWandTime ++;
	} else { holdWandTime = 0; }
	if(wepSelected == 8 && wepLevels[8] > 0 && shootCD < 1 && mp >= wepCost[wepSelected]){
		
		shootCD = wepCDMax[wepSelected];
		mp -= wepCost[wepSelected];
		instance_create_depth(x, y, ww.layerE, objEffPlayerWand);
			
		if(holdWandTime > 30 && inSpace){
			ww.state = State.leaveSpace;
			with(objEffect){ if(object_index != objEffPlayerWand){ instance_destroy(); }}
			with(objSpaceRock){ instance_destroy(); }
			with(objPup){ instance_destroy(); }
			
		} else if(playerOnWarpSpot()){
			do{ 
				warpIndex ++;
				if(warpIndex >= array_length(warpSpots)){ warpIndex = 0; }
			} until (xMap != warpSpots[warpIndex].a || yMap != warpSpots[warpIndex].b );
			
			instance_create_depth(0, 0, ww.layerE, objTornado);
			ww.state = State.warpWind;
			xMap = warpSpots[warpIndex].a; yMap = warpSpots[warpIndex].b;
			xWarpPoint = ww.roomWidth / 2; 
			yWarpPoint = (9 * 64 + 32);
			blockMobSpawn = true; shootCD = 2;
		} else if (playerOnArraySpot(drainLakeSpots)) {
			with(objTile){
				if(sprite_index == ww.waterKind){ if(floor(x/64) != 14 && ( floor(y/64) != 0 && floor(y/64) != 11  ) ) {
							
					var t = instance_create_depth(x, y, depth, objTile);
					if(floor(x/64) == ww.secX && floor(y/64) == ww.secY){
						t.sprite_index = imgDoorway;
					} else {
						t.sprite_index = imgDirt;
					}
					ww.fmap[floor(x/64), floor(y/64)] = t;
					
					var t = instance_create_depth(x, y, depth-1, objDrainTile);
					t.sprite_index = sprite_index;
					instance_destroy();
					ww.lakeDrained = true;
				}
			}}
		} else if (pc.xMap == 10 && pc.yMap == 5 && !pc.eventTrigger[Event.gotCarrot06]) {
			with(objPup){ if(sprite_index == imgCarrot){
				slowFall = 300;
			}}
		} else if (!pc.eventTrigger[Event.gotPhiloStone] && pc.xMap == 3 && pc.yMap == 9) {
			with(objTile){
				if(sprite_index == imgBlank || sprite_index == imgMobDragonSleeping){
					if(sprite_index == imgMobDragonSleeping){
						instance_create_depth(x + 128, y + 48, ww.layerM, objMobDragonSnapGreen);
					}
					ww.bmap[floor(x/64), floor(y/64)] = noone;
					instance_destroy();
				}
			}
		} else if (pc.xMap == 0 && pc.yMap == 5) {
			with(objTile){
				if(sprite_index == imgBlank || sprite_index == imgGraveBig){
					if(sprite_index == imgGraveBig){
						repeat(70){
							instance_create_depth(x + irandom_range(0, sprite_width), y + irandom_range(0, sprite_height), ww.layerE, objChip);
						}
					}
					ww.bmap[floor(x/64), floor(y/64)] = noone;
					instance_destroy();
				}
			}
		} else if (instance_number(objStarBomb) > 0) {
			with(objStarBomb){
				//var sb = instance_create_depth(x, 0, ww.layerE, objStarBombFall);
				//sb.yTar = y;
				var s = instance_create_depth(x, y, depth, objPlayerBlastMed);
				s.pow = 40;
				instance_destroy();
			}
		} else if (instance_number(objMob) > 0) {
			var golded = false;
			with(objMob){
				if(goldFrame != noone){
					golded = true;
					instance_create_depth(x, y, ww.layerE, goldFrame);
					instance_destroy();
				}
			}
			if(golded){ return; }
			
			var wormToSlime = false;
			with(objMob){
				if(object_index == objMobWormMan){
					wormToSlime = true;
					instance_create_depth(x, y, ww.layerE, objMob);
					instance_destroy();
				}
			}
			if(wormToSlime){ return; }
			
			var m = instance_find(objMob, irandom_range(0, instance_number(objMob) - 1));
			var r = irandom_range(1, 3);
			if(r == 1){ m.burnTime += 120; }
			if(r == 2){ m.poisonTime += 120; }
			if(r == 3){ m.frozenTime += 120; }
		}
	}
}