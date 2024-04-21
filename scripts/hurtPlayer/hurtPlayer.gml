function hurtPlayer(dmg, isBlockableShot){
	
	if(isBlockableShot && pc.sp >= pc.spMax){
		
		var keepShieldChance = 0;
		if(pc.eventTrigger[Event.gotShield2]){ keepShieldChance = 25; }
		if(pc.eventTrigger[Event.gotShield3]){ keepShieldChance = 50; }
		
		if(irandom_range(0, 99) < keepShieldChance){
			
		} else {
			playSfx(sfxClank);
			pc.sp = 0;
		}
		
		return;
	}
	
	pc.shotPower = noone;
	
	
	if(pc.inSpace && pc.spaceLevel >= 10){ dmg *= 3; }
	else if(pc.inSpace && pc.spaceLevel >= 7){ dmg *= 1.5; }
	
	
	if(pc.eventTrigger[Event.gotRing3]){
		dmg = dmg * .85;
	} else if(pc.eventTrigger[Event.gotRing2]){
		dmg = dmg * .7;
	} else if(pc.eventTrigger[Event.gotRing1]){
		dmg = dmg * .55;
	}
	
	playSfx(sfxHit);
	pc.bombCounter = 0;
	pc.hp -= dmg; ///
	pc.hurtTime = 30; ///
	if(pc.eventTrigger[Event.gotRubberBand]){ pc.hurtTime += 10; }

}