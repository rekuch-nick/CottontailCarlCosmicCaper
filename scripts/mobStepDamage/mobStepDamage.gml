function mobStepDamage(){
	
	if(headSpawn != noone){ 
		if(	(headSpawnNum >= 3 && hp / hpMax < .75) ||
			(headSpawnNum >= 2 && hp / hpMax < .5) ||
			(headSpawnNum >= 1 && hp / hpMax < .25) ){
		
			headSpawnNum --;
			instance_create_depth(x + choose(-64, 0, 64), y+choose(-64, 0, 64), depth, headSpawn);
		}
	}
	
	
	
	if(hp < 1){
		
		if(speedUpOnKill){ with(objMob){ if(speedUpOnKill){ moveSpeed ++; thinkCD = 0; } } }
		
		
		
		if(dropsBombs && dropChance > 0){ pc.bombCounter ++; }
		if(irandom_range(0, 99) < dropChance || (dropsBombs && pc.bombCounter >= 8 && dropChance > 0) ){
			var d = instance_create_depth(x, y, ww.layerP, mobRollDrop());
			if(dropEventNumber != noone){ d.eventNumber = dropEventNumber; }
			
			if(pc.eventTrigger[Event.gotLuckyCoin] && d.sprite_index == imgCoin && irandom_range(1, 4) == 1){
				instance_create_depth(x + choose(-15, 15), y + choose(-15 + 15), ww.layerP, objPupCoin);
				if(irandom_range(1, 4) == 1){
					instance_create_depth(x + choose(-25, 25), y + choose(-25 + 25), ww.layerP, objPupCoin);
				}
			}
		}
		
		if(isDragon){ with(objMobShot){ instance_destroy(); }}

	
		if(cubeSplitOnDeath){
			repeat(2){
				var o = object_index;
				var s = image_yscale - 2;
		
				if(s < 2 && o == objMobCube){ o = objMobCubeSmall; s = 6; }
				if(s < 2){ break; }
		
				dropChance = 0;
				var spt = instance_create_depth(x, y, depth, o);
				spt.image_xscale = s;
				spt.image_yscale = s;
				spt.incincTime = 7;
			}
		}
		
		
	
	
		if(object_index == objMobEagle){ instance_create_depth(x, y, ww.layerE, objEagleLeave); }
		
		if(object_index == objMobDarkness){ with(objBlock){
			if(sprite_index == imgEggShellsBlock){
				ww.bmap[floor(x / 64), floor(y / 64)] = noone;
				instance_destroy();
			}
		}}
		
		instance_destroy();
	}
}