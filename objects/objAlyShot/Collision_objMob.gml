if(other.blockTime > 0){ return; }
if(other.incincTime > 0){ return; }
if(!arrayContains(hitList, other)){
	arrayAdd(hitList, other);
	
	if(other.basicImmunity && isBasicShot){ 
		
	} else {
		other.hurtTime = 20;
		other.burnTime = max(other.burnTime, burnPow);
		other.poisonTime = max(other.poisonTime, poisonPow);
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
			var m = getChainMob(other.id, chainRange, true);
			if(m != noone){
				xTar = m.x;
				yTar = m.y;
				
				angleSpeed();
			}
			
			bounces --;
			
			
		} else {
			if(bounces == 0 && object_index == objPlayerRang4){
				bounces --;
				instance_create_depth(other.x, other.y, ww.layerE, objLightning, {image_angle: 90});
				other.hp -= 20;
			}
			
			xTar = pc.x; yTar = pc.y;
			angleSpeed();
		}
	}
}
