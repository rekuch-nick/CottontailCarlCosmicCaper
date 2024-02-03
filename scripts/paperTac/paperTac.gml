function paperTac(){
	
	var s = "The most important rule while fighting is to KEEP MOVING. Most of the monsters will shoot at, or move towards, your current location. That makes every other location a better place to be!";
	
	if(lowestPalaceCleared() >= 10){
		s = "The bone dragon king is a terrible foe. Use bombs when he summons slime cubes, and bring a stun potion for the ghosts.";
	}
	
	
	
	
	return s;
	
	
}