if(other.blockTime > 0){ return; }
if(other.incincTime > 0){ return; }
if(!arrayContains(hitList, other)){
	arrayAdd(hitList, other);
	
	if(other.basicImmunity && isBasicShot){ 
		
	} else {
		other.hurtTime = 20;
		other.burnTime = max(other.burnTime, burnPow);
		if(other.canFreeze && irandom_range(1, 100) < freezeChance){
			other.frozenTime = max(other.frozenTime, freezePow);
		}
		if(other.canStun && irandom_range(1, 100) < stunChance){
			other.stunTime = max(other.stunTime, stunPow);
		}
		
		if((object_index == objPlayerBeamsPhilo) && pc.shotPower == Shot.burst){
			var s = instance_create_depth(x, y, depth, objPlayerBlastSmall);
			s.pow = pow;
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
