function paperTac(){
	
	var s = "The most important rule while fighting is to KEEP MOVING. Most of the monsters will shoot at, or move towards, your current location. That makes every other location a better place to be!";
	
	if(pc.eventTrigger[Event.gotBird]){
		if(pc.eventTrigger[Event.gotWhistle]){
			s = "The dragon queen will always drain your MP once, but she'll do it again if you use the Wind Stone very often.";
		} else {
			s = "Find the baby shark, who hides in the graveyard. He can sell you his father's help.";
		}
	} else if (lowestPalaceCleared() >= 11) {
		s = "It's time to hatch the eggs. Find the nest west of here and draw out the darkness.";
	} else if(lowestPalaceCleared() >= 10){
		s = "The bone dragon king is a terrible foe. Use bombs when he summons slime cubes, and bring a stun potion for the ghosts.";
	}
	
	
	
	
	return s;
	
	
}