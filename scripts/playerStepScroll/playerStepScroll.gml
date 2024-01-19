function playerStepScroll(){
	var ss = 32;
	if(pc.debug){ ss = 64 * 3; }
	scrollTime -= ss;
	if(scrollDir == 1){ with(objTile){ y += ss; } }
	if(scrollDir == 2){ with(objTile){ x -= ss; } }
	if(scrollDir == 3){ with(objTile){ y -= ss; } }
	if(scrollDir == 4){ with(objTile){ x += ss; } }
	if(scrollTime < 1){
		with(objTile){
			if(x < 0 || y < 0 || x >= ww.roomWidth || y >= room_height){
				instance_destroy();
			}
		}
		ww.state = State.play;
		
		mobSpawn();
		
		if(!pc.eventTrigger[Event.gotStar] && pc.xMap == 16 && pc.yMap == 4){
			instance_create_depth(11 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupStar);
		}
		
		if(pc.xMap == 20 && pc.yMap == 0){
			var s = instance_create_depth(128 + 32, 64 * 7, ww.layerP, objPupHealingHeart);
			s.txt = "Easy\n(Heal\nOver Time)"; s.txtColor = c_lime; s.yTxtOffset = -120;
		
			s = instance_create_depth((ww.roomWidth / 4) * 2, 64 * 7, ww.layerP, objPupShotDrop);
			s.txt = "Normal\n(Find More\nTemp ShotUps)"; s.txtColor = c_aqua; s.yTxtOffset = -120;
		
			s = instance_create_depth(12 * 64 + 32, 64 * 7, ww.layerP, objPupCoinBag);
			s.txt = "Hard\n(200 Coins)"; s.txtColor = c_red; s.yTxtOffset = -96;
		}
		
		if(pc.xMap == 10 && pc.yMap == 5 && !pc.eventTrigger[Event.gotCarrot06]){
			var s = instance_create_depth(5 * 64, 64 * 2, ww.layerP, objPupCarrot);
			s.eventNumber = Event.gotCarrot06;
		}
		
		
		///star bombs
		
		if(
			(pc.xMap == 0 && pc.yMap == 7) ||
			(pc.xMap == 2 && pc.yMap == 7) ||
			(pc.xMap == 9 && pc.yMap == 7) ||
			(pc.xMap == 8 && pc.yMap == 7) ||
			(pc.xMap == 11 && pc.yMap == 7) ||
			(pc.xMap == 13 && pc.yMap == 7) ){
			instance_create_depth(5 * 64 + 32, 3 * 64 + 32, ww.layerE, objStarBomb);
			instance_create_depth(5 * 64 + 32, 8 * 64 + 32, ww.layerE, objStarBomb);
			instance_create_depth(9 * 64 + 32, 3 * 64 + 32, ww.layerE, objStarBomb);
			instance_create_depth(9 * 64 + 32, 8 * 64 + 32, ww.layerE, objStarBomb);
		}
		
		
		
		
		return;
	}

}