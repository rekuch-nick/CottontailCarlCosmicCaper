function playerFreezeWater(){
	
	if(ww.state == State.scroll){ return; }
	if(inSpace){ return; }
	
	if(wepSelected == 5 && wepLevels[5] > 0){ // && mp >= 5){
		
		var frozeSomething = false;
		
		for(var a = xTile - 1; a <= xTile + 1; a ++){
			for(var b = yTile - 1; b <= yTile + 1; b ++){
				if(a >= 1 && b >= 1 && a < 14 && b < 11){ //inBounds - 1
					if(ww.fmap[a, b] == noone){ continue; }
					if(ww.fmap[a, b].sprite_index == imgWater || 
							ww.fmap[a, b].sprite_index == imgWaterDark){
						
						ww.fmap[a, b].sprite_index = imgWaterFrozen;
						ww.fmap[a, b].image_alpha = .7;
						ww.fmap[a, b].isWater = false;
						ww.fmap[a, b].isLand = true;
						frozeSomething = true;
						with(objMob){
							if(!canWalkLand){
								if(floor(x / 64) == a && floor(y / 64) == b){
									shotKind = noone;
									image_angle = -90;
									image_speed = 0;
									image_alpha = .9;
									moveSpeed = 0;
									cantBump = true;
								}
							}
						}
					}
				}
			}
		}
		
		if(frozeSomething){
			//mp -= 5;
			
			
		}
	}

}