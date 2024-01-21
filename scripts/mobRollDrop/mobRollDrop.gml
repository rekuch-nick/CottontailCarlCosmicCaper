function mobRollDrop(){
	
	if(drop != noone){ return drop; }
	
	var r = irandom_range(1, 20);
	var t = objPupCoin;
	
	if(pc.bombCounter >= 8 && dropsBombs){ r = 18; pc.bombCounter = 0; }
	
	if((r == 1 || r == 2) && pc.mp < pc.mpMax){ t = objPupMPOrb; }
	if((r == 3 || r == 4) && pc.hp < pc.hpMax){ t = objPupHPOrb; }
	if(r == 5 && pc.eventTrigger[Event.gotChargeShot]){ t = objPupBPOrb; }
	
	
	if(r == 17 && dropsPotions){ t = choose(objPupPotionFire, objPupPotionPoison); }
	if(r == 18 && dropsBombs){ t = objPupBomb; }
	if(r == 19 && pc.shotPower == noone && pc.eventTrigger[Event.gotMonocule]){ t = choose(objPupShotUpBurst, objPupShotUpRapid, objPupShotUpWide); }
	if(r == 20){ t = choose(objPupShotUpBurst, objPupShotUpRapid, objPupShotUpWide); }
	
	
	return t;
}