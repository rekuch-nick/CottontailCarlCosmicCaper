function mobStepDamage(){
	
	if(hp < 1){
	
	if(speedUpOnKill){ with(objMob){ if(speedUpOnKill){ moveSpeed ++; thinkCD = 0; } } }
	
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
	
	if(dropsBombs && dropChance > 0){ pc.bombCounter ++; }
	if(irandom_range(0, 99) < dropChance || (dropsBombs && pc.bombCounter >= 8 && dropChance > 0) ){
		var d = instance_create_depth(x, y, ww.layerP, mobRollDrop());
		if(dropEventNumber != noone){ d.eventNumber = dropEventNumber; }
	}
	
	if(isDragon){ with(objMobShot){ instance_destroy(); }}
		instance_destroy();
	}

	


}