function hurtPlayer(dmg, isBlockableShot){
	
	if(isBlockableShot && pc.sp >= pc.spMax){
		pc.sp = 0;
		return;
	}
	
	
	pc.shotPower = noone;
	
	
	pc.hp -= dmg; ///
	pc.hurtTime = 30; ///

}