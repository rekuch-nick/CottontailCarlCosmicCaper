if(!arrayContains(hitList, other)){
	arrayAdd(hitList, other);
	
	if(other.basicImmunity && isBasicShot){ 
		show_debug_message(123123)
	} else {
		other.hurtTime = 20;
		other.burnTime = max(other.burnTime, burnPow);
		hurtMonster(other, id);
	}
	
	if(destroyOnHit){ timeCD = 0; }
	
	if(isRang){ ///
		if(bounces > 0){
			xTar = pc.x; yTar = pc.y;
			// find nearby mob and target it
			bounces --;
		} else {
			xTar = pc.x; yTar = pc.y;
		}
		angleSpeed();
	}
}
