function hurtMonster(mob, shot){
	
	
	var dmg = shot.pow;
	if(shot.isRang && mob.weakToRang){ dmg *= 7; }
	//TODO: some effect here
	
	mob.hp -= dmg;
	
}