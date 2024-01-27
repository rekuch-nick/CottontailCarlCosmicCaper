function hurtMonster(mob, shot){
	
	var weak = false;
	var dmg = shot.pow;
	if(shot.isRang && mob.weakToRang){ dmg *= 7; weak = true; }
	if(shot.isNinjaStar && mob.weakToNinjaStars){ dmg *= 4; weak = true; }
	if(shot.burnPow > 0 && mob.weakToFire){ weak = true; }
	
	if(weak && mob.showedWeak == false){
		mob.showedWeak = true;
		var e = instance_create_depth(mob.x, mob.y - mob.sprite_height / 2, ww.layerE, objEffect);
		e.txt = "Super Effective";
		e.txtC1 = c_yellow; e.txtC2 = c_red; e.ySpeed = -1;
	}
	
	
	
	mob.hp -= dmg;
	
}