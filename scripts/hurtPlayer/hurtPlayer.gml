function hurtPlayer(dmg, isBlockableShot){
	
	if(isBlockableShot && pc.sp >= pc.spMax){
		
		var keepShieldChance = 0;
		if(pc.eventTrigger[Event.gotShield2]){ keepShieldChance = 25; }
		if(pc.eventTrigger[Event.gotShield3]){ keepShieldChance = 50; }
		
		if(irandom_range(0, 99) < keepShieldChance){
			
		} else {
			pc.sp = 0;
		}
		
		return;
	}
	
	
	pc.shotPower = noone;
	
	
	if(pc.eventTrigger[Event.gotRing3]){
		dmg = dmg * .25;
	} else if(pc.eventTrigger[Event.gotRing2]){
		dmg = dmg * .5;
	} else if(pc.eventTrigger[Event.gotRing1]){
		dmg = dmg * .75;
	}
	
	
	pc.bombCounter = 0;
	pc.hp -= dmg; ///
	pc.hurtTime = 30; ///
	if(pc.eventTrigger[Event.gotRubberBand]){ pc.hurtTime += 10; }

}