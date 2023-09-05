function creatureCanBeHereDir(d, o){
	if(is_undefined(o)){
		o = id;
	}
	
	if(d == 4 && x < xFat){ return false; }
	if(d == 2 && x >= ww.roomWidth - xFat){ return false; }
	if(d == 1 && y < yFat){ return false; }
	if(d == 3 && y >= room_height - yFat){ return false; }
	
	//if((d == 1 || d == 4) && collision_point(x-xFat, y-yFat, objBlock, true, true)){ return false; }
	//if((d == 3 || d == 4) && collision_point(x-xFat, y+yFat, objBlock, true, true)){ return false; }
	//if((d == 1 || d == 2) && collision_point(x+xFat, y-yFat, objBlock, true, true)){ return false; }
	//if((d == 2 || d == 3) && collision_point(x+xFat, y+yFat, objBlock, true, true)){ return false; }
	
	if((d == 1 || d == 4) && !creatureCanPoint(x-xFat, y-yFat, o)){ return false; }
	if((d == 3 || d == 4) && !creatureCanPoint(x-xFat, y+yFat, o)){ return false; }
	if((d == 1 || d == 2) && !creatureCanPoint(x+xFat, y-yFat, o)){ return false; }
	if((d == 2 || d == 3) && !creatureCanPoint(x+xFat, y+yFat, o)){ return false; }
	
	
	
	
	
	
	
	
	return true;
}