function playerStepScroll(){
	var ss = 32;
	if(pc.debug){ ss = 64 * 3; }
	scrollTime -= ss;
	if(scrollDir == 1){ with(objTile){ y += ss; } }
	if(scrollDir == 2){ with(objTile){ x -= ss; } }
	if(scrollDir == 3){ with(objTile){ y -= ss; } }
	if(scrollDir == 4){ with(objTile){ x += ss; } }
	with(objTile){
		xSpot = floor(x/64);
		ySpot = floor(y/64);
	}
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
		
			s = instance_create_depth(12 * 64 + 32, 64 * 7, ww.layerP, objPupCoinStack);
			s.txt = "Hard\n(200 Coins)"; s.txtColor = c_red; s.yTxtOffset = -96;
		}
		
		if(pc.xMap == 21 && pc.yMap == 3){
			ww.bmap[8][6].sprite_index = imgNPCMouse;
		}
		if(pc.xMap == 20 && pc.yMap == 1){
			ww.bmap[5, 7].sprite_index = imgPupStar;
			ww.bmap[6, 7].sprite_index = imgNPCMouse;
			ww.bmap[8, 7].sprite_index = imgNPCMouse;
			ww.bmap[10, 7].sprite_index = imgNPCMouse;
			
			if(!pc.eventTrigger[Event.gotHealingHeart]){
				instance_create_depth((ww.roomWidth / 4) * 2, 64 * 9, ww.layerP, objPupHealingHeart);
			} else if (!pc.eventTrigger[Event.gotMonocule]) {
				instance_create_depth((ww.roomWidth / 4) * 2, 64 * 9, ww.layerP, objPupShotDrop);
			} else {
				instance_create_depth((ww.roomWidth / 4) * 2, 64 * 9, ww.layerP, objPupCoinStack);
			}
			
			
		}
		
		if(pc.xMap == 10 && pc.yMap == 5 && !pc.eventTrigger[Event.gotCarrot06]){
			var s = instance_create_depth(5 * 64, 64 * 2, ww.layerP, objPupCarrot);
			s.eventNumber = Event.gotCarrot06;
		}
		
		
		
		
		
		
		if(pc.xMap == 3 && pc.yMap == 9){ if(!eventTrigger[Event.gotPhiloStone]){
			var aa = 5; var bb = 7;
			ww.bmap[aa, bb] = instance_create_depth(aa * 64, bb * 64, ww.layerB, objBlock);
			ww.bmap[aa, bb].sprite_index = imgMobDragonSleeping;
			for(var a=aa; a<aa+4; a++){ for(var b=bb; b<bb+3; b++){
				if(a==aa && b==bb){ continue; }
				ww.bmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerB, objBlock);
				ww.bmap[a, b].sprite_index = imgBlank;
			}}
		}}
		
		
		///star bombs
		
		if(
			(pc.xMap == 1 && pc.yMap == 3) ||
			(pc.xMap == 2 && pc.yMap == 3) ||
			(pc.xMap == 3 && pc.yMap == 3) ||
			(pc.xMap == 9 && pc.yMap == 3) ||
			(pc.xMap == 7 && pc.yMap == 3) ||
			(pc.xMap == 11 && pc.yMap == 3) ||
			(pc.xMap == 13 && pc.yMap == 3) ||
			(pc.xMap == 16 && pc.yMap == 3) ||
			
			(pc.xMap == 1 && pc.yMap == 5) ||
			(pc.xMap == 2 && pc.yMap == 5) ||
			(pc.xMap == 3 && pc.yMap == 5) ||
			(pc.xMap == 9 && pc.yMap == 5) ||
			(pc.xMap == 8 && pc.yMap == 5) ||
			(pc.xMap == 11 && pc.yMap == 5) ||
			(pc.xMap == 13 && pc.yMap == 5) ||
			(pc.xMap == 16 && pc.yMap == 5) ||
			
			(pc.xMap == 0 && pc.yMap == 7) ||
			(pc.xMap == 2 && pc.yMap == 7) ||
			(pc.xMap == 9 && pc.yMap == 7) ||
			(pc.xMap == 8 && pc.yMap == 7) ||
			(pc.xMap == 11 && pc.yMap == 7) ||
			(pc.xMap == 13 && pc.yMap == 7) ||
			
			(pc.xMap == 3 && pc.yMap == 0) ||
			(pc.xMap == 3 && pc.yMap == 1) ||
			(pc.xMap == 3 && pc.yMap == 2) ||
			(pc.xMap == 6 && pc.yMap == 0) ||
			(pc.xMap == 5 && pc.yMap == 2) ||
			
			(pc.xMap == 9 && pc.yMap == 1) ||
			(pc.xMap == 10 && pc.yMap == 1) ||
			(pc.xMap == 11 && pc.yMap == 1) ||
			
			(pc.xMap == 16 && pc.yMap == 4) ||
			(pc.xMap == 18 && pc.yMap == 5)
			
			){
			instance_create_depth(5 * 64 + 32, 3 * 64 + 32, ww.layerE, objStarBomb);
			instance_create_depth(5 * 64 + 32, 8 * 64 + 32, ww.layerE, objStarBomb);
			instance_create_depth(9 * 64 + 32, 3 * 64 + 32, ww.layerE, objStarBomb);
			instance_create_depth(9 * 64 + 32, 8 * 64 + 32, ww.layerE, objStarBomb);
		}
		
		
		
		
		return;
	}

}