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
	} else if(!pc.eventTrigger[Event.gotFeather] && pc.hpMax >= 300){
		s = "Atop the tallest mountian is Eagle. Challenge him to a fight and he will add his power to yours.";
	} else if(!pc.eventTrigger[Event.gotRing3] && pc.coins >= 650 && pc.eventTrigger[Event.gotRing2]){
		s = "Just outside my house is a hidden path north. Meet the shopkeeper there.";
	} else if(pc.coins >= 210 && pc.hpMax >= 200 && pc.eventTrigger[Event.gotPowderHorn] && !pc.eventTrigger[Event.gotPowderHorn2]){
		s = "The moles deep below the quicksand have found something to sell you.";
	} else if(pc.coins >= 210 && pc.hpMax >= 150 && pc.eventTrigger[Event.gotMPShell] && !pc.eventTrigger[Event.gotMPShell2]){
		s = "The moles deep below the quicksand have found something to sell you.";
	} else if(pc.eventTrigger[Event.gotWand] && (!pc.eventTrigger[Event.gotCoinBag] || !pc.eventTrigger[Event.gotBombBag])){
		s = "Use your wand to drain lakes, there are some very good items hidden under water and lava.";
	} else if(pc.eventTrigger[Event.gotHole] && !pc.eventTrigger[Event.gotCross] ){
		s = "Sick of skeletons rising from the dead? North of the graveyard is a mouse you should visit.";
	
	
	
	} else if(!pc.eventTrigger[Event.gotCarrot19] || !pc.eventTrigger[Event.gotCarrot20] || !pc.eventTrigger[Event.gotCarrot21]){
		s = "Search the south beach, just East of Owl's place. There's a couple of carrots hidden there.";
	} else if(!pc.eventTrigger[Event.gotFarShot] && lowestPalaceCleared() > 2){
		s = "A simple block puzzle in the jungle south of here holds a very good item.";
	} else if(!pc.eventTrigger[Event.gotRangPack] && lowestPalaceCleared() > 2){
		s = "If you want your boomarang to be useful, Keep searching in the desert.";
	
	} else if(!pc.eventTrigger[Event.gotStars]){
		s = "Worms and snakes are weak to Ninja Stars. Buy some at the Lizard Brother's Store.";
	} else if(!pc.eventTrigger[Event.gotOrbit]){
		s = "Witches and Multi-Mouths are weak to the Flail. Buy one at the Lizard Brother's Store.";
	
	
	
	}
	return s;
	
	
}