function mobChooseAdjacentTile(){
	
	var tries = 0;
	while(true){
		tries ++;
		
		if(tries > 40){
			a = xTile; 
			b = yTile;
			break;
		}
		
		var a = choose(xTile - 1, xTile, xTile + 1);
		var b = choose(yTile - 1, yTile, yTile + 1);
		
		if(tries < 5 && ww.bmap[xTile, yTile] != noone && ww.bmap[xTile, yTile].sprite_index == imgGrave){
			a = xTile;
			b = yTile - 1;
		}
		
		if(a != xTile && b != yTile){ continue; }
		if(!inBoundsTile(a, b)){ continue; }
		if(ww.bmap[a, b] != noone){ continue; }
		if(ww.fmap[a, b] != noone){
			if(ww.fmap[a, b].isWater && !canWalkWater){ continue; }
			if(ww.fmap[a, b].isLava && !canWalkLava){ continue; }
			if(ww.fmap[a, b].isLand && !canWalkLand){ continue; }
			if(ww.fmap[a, b].isUnwalkable){ continue; }
		}
		
		if(!irandom_range(0, 99) < canBackupChance){
			if(a == xLast && b == yLast){ continue; }
		}
		
		if(irandom_range(0, 99) < huntChance){
			if(disManhat(a, b, pc.xTile, pc.yTile) > disManhat(xTile, yTile, pc.xTile, pc.yTile)){
				continue;
			}
		}
		
		if(!irandom_range(0, 99) < canStandStillChance){
			if(a == xTile && b == yTile){ continue; }
		}
		
		break;		
	}
	
	xTarTile = a;
	yTarTile = b;
	
}