function playerFreezeWater(){
	
	if(ww.state == State.scroll){ return; }
	if(inSpace){ return; }
	
	if(wepSelected == 5 && wepLevels[5] > 0 && mp >= 5){
		
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
						frozeSomething = true;
					}
				}
			}
		}
		
		if(frozeSomething){
			mp -= 5;
		}
	}

}