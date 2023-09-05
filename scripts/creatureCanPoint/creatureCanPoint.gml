function creatureCanPoint(a, b, o){
	if(is_undefined(o)){
		o = id;
	}
	
	
	var blo = collision_point(a, b, objBlock, true, true);
	if(blo != noone){ return false; }
	
	var f = collision_point(a, b, objTile, true, true);
	if(f != noone){
		if(f.isWater && !o.canWalkWater){ return false; }
		if(f.isLava && !o.canWalkLava){ return false; }
	}
	
	return true;
}