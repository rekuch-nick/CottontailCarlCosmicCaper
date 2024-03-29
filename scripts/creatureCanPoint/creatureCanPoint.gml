function creatureCanPoint(a, b, o){
	if(is_undefined(o)){
		o = id;
	}
	
	if(o == pc && pc.debug){ return true; }
	
	var blo = collision_point(a, b, objBlock, true, true);
	if(blo != noone){ return false; }
	
	if(id == pc){
	//	var mob = collision_point(a, b, objMob, true, true);
	//	if(mob != noone){ return false; }
		
		var rock = collision_point(a, b, objSpaceRock, true, true);
		if(rock != noone && rock.blockPlayer){ return false; }
	
	}
	
	
	var f = collision_point(a, b, objTile, true, true);
	if(f != noone){
		if(f.isWater && !o.canWalkWater){ return false; }
		if(f.isLava && !o.canWalkLava){ return false; }
		if(f.isUnwalkable){ return false; }
	}
	
	return true;
}