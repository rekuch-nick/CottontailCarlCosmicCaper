if(other.blockTime > 0){ return; }
if(!arrayContains(hitList, other)){
	arrayAdd(hitList, other);
	
	if(other.basicImmunity && isBasicShot){ 
		
	} else {
		other.hurtTime = 20;
		other.burnTime = max(other.burnTime, burnPow);
		if(other.canFreeze && irandom_range(1, 100) < freezeChance){
			other.frozenTime = max(other.frozenTime, freezePow);
		}
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
