function hurtMonster(mob, shot){
	

	
	var weak = false;
	var dmg = shot.pow;
	if(shot.isRang && mob.weakToRang){ dmg *= 7; weak = true; }
	if(shot.isNinjaStar && mob.weakToNinjaStars){ dmg *= 4; weak = true; }
	if(shot.burnPow > 0 && mob.weakToFire){ weak = true; }
	if(shot.isFire && mob.weakToFire){ weak = true; }
	if(shot.isFire && mob.dieToFire){ weak = true; }
	if(shot.isWind && mob.weakToWind){ weak = true; dmg *= 4; }
	if(shot.isOrbit && mob.weakToOrbit){ weak = true; dmg *= 4; }
	if(shot.isIce && mob.weakToIce){ weak = true; dmg *= 4; }
	if(shot.isSword && mob.weakToSword){ weak = true; dmg *= 4; }
	
	if(weak && mob.showedWeak == false){
		mob.showedWeak = true;
		var e = instance_create_depth(mob.x, mob.y - mob.sprite_height / 2, ww.layerE, objEffect);
		e.txt = "Ouch!";
		e.txtC1 = c_yellow; e.txtC2 = c_red; e.ySpeed = -1;
		
		if(pc.eventTrigger[Event.gotBlueBead]){ pc.healingMP += 10; }
		if(pc.eventTrigger[Event.gotGreenFlake]){ pc.healingHP += 10; }
		
	}
	
	
	
	mob.hp -= dmg;
	
}