function playerUseWindStone(){
	
	
	if(wepSelected == 4 && wepLevels[4] > 0 && shootCD < 1 && mp >= wepCost[wepSelected]){
		shootCD = wepCDMax[wepSelected];
		mp -= wepCost[wepSelected];
		windAngle += 10;
		if(windAngle > 360){ windAngle -= 360; }
		windUP = true;
		with(objMobShot){ if(isWindDeflectable){
			if(point_distance(x, y, pc.x, pc.y) < 128){
				instance_create_depth(x, y, ww.layerE, objShotDeflected);
				instance_destroy();
			}
		}}
		if(eventTrigger[Event.gotWindStone2]){
			instance_create_depth(0, pc.y - 64, ww.layerE + 1, objPlayerBlastWind, {x2: pc.x - 64, y2: 128 } );
			instance_create_depth(pc.x + 64, pc.y - 64, ww.layerE + 1, objPlayerBlastWind, {x2: ww.roomWidth - (pc.x + 64), y2: 128 } );
			instance_create_depth(pc.x - 64, 0, ww.layerE + 1, objPlayerBlastWind, {x2: 128, y2: pc.y - 64 } );
			instance_create_depth(pc.x - 64, pc.y + 64, ww.layerE + 1, objPlayerBlastWind, {x2: 128, y2: room_height - (pc.y + 64) } );
			
		}
	}

}