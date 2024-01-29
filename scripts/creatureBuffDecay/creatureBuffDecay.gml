function creatureBuffDecay(){
	
	if(isDragon || ignoreStatus){
		burnTime = 0;
		poisonTime = 0;
		stunTime = 0;
		frozenTime = 0;
		stunTime = 0;
	}
	
	if(burnTime > 0){ burnTime --; }
	if(poisonTime > 0){ poisonTime --; }
	if(slowTime > 0){ slowTime --; }
	if(tangleTime > 0){ tangleTime --; }
	if(muteTime > 0){ muteTime --; }
	if(stunTime > 0){ stunTime --; }
	if(frozenTime > 0){ frozenTime --; }
	if(shieldBreakTime > 0){ shieldBreakTime --; }
	
}