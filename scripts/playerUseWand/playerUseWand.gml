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
				if(sprite_index == ww.waterKind){
							
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
				}
			}
		} else if (instance_number(objMob) > 0) {
			var m = instance_find(objMob, irandom_range(0, instance_number(objMob) - 1));
			var r = irandom_range(1, 3);
			if(r == 1){ m.burnTime += 120; }
			if(r == 2){ m.poisonTime += 120; }
			if(r == 3){ m.frozenTime += 120; }
		}
	}
}