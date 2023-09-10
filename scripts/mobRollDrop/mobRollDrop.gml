function mobRollDrop(){
	
	var r = irandom_range(1, 20);
	var t = objPupCoin;
	
	if((r == 15 || r == 16) && pc.mp < pc.mpMax){ t = objPupMPOrb; }
	if((r == 17 || r == 18) && pc.hp < pc.hpMax){ t = objPupHPOrb; }
	
	if(r == 20 || (pc.shotPower == noone && r == 19 && pc.eventTrigger[Event.gotMonocule])){
		t = choose(objPupShotUpBurst, objPupShotUpRapid, objPupShotUpWide);
	}
	
	
	return t;
}