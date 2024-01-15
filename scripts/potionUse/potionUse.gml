function potionUse(k){
	
	if(k == imgPupPotionFire){
		with(objMob){ burnTime = max(burnTime, 150); }
	}
	
	
	if(k == imgPupPotionPoison){
		with(objMob){ poisonTime = max(poisonTime, 150); }
	}
	
	
	
}