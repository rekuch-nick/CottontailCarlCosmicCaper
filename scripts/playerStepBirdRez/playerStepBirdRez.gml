function playerStepBirdRez(){
	
	
	pc.hp = clamp(pc.hp + .5, 0, pc.hpMax);
	pc.mp = clamp(pc.mp + 1, 0, pc.mpMax);
	
	if(instance_number(objEagleSave) < 1){
		instance_create_depth(pc.x, pc.y, ww.layerE, objEagleSave);
	}
	
	
	
	pc.featherCD = 30 * 60 * 20;
	
}