function potionUse(k){
	
	
	
	if(pc.eventTrigger[Event.gotCauldren1]){ pc.healingHP = pc.hpMax / 2; }
	if(pc.eventTrigger[Event.gotCauldren2]){ pc.healingMP = pc.mpMax; }
	if(pc.eventTrigger[Event.gotCauldren3]){ pc.healingHP = pc.hpMax; }
	
	if(k == imgPupPotionFire){
		with(objMob){ burnTime = max(burnTime, 150); }
	}
	
	
	if(k == imgPupPotionPoison){
		with(objMob){ poisonTime = max(poisonTime, 150); }
	}
	
	
	
}