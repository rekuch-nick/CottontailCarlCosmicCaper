function creatureCanBeHere(o){
	if(is_undefined(o)){
		o = id;
	}
	
	if(x < xFat || x >= ww.roomWidth - xFat){ return false; }
	if(y < yFat || y >= room_height - yFat){ return false; }
	
	if(collision_point(x-xFat, y-yFat, objBlock, true, true)){ return false; }
	if(collision_point(x-xFat, y+yFat, objBlock, true, true)){ return false; }
	if(collision_point(x+xFat, y-yFat, objBlock, true, true)){ return false; }
	if(collision_point(x+xFat, y+yFat, objBlock, true, true)){ return false; }
	
	return true;
}
