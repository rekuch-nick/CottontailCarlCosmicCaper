if(other.blockTime > 0){ return; }
if(other.incincTime > 0){ return; }
if(other.immuneToAll){ return; }
if(!arrayContains(hitList, other)){
	arrayAdd(hitList, other);
	
	if(other.basicImmunity && isBasicShot){ 
		playSfx(sfxClank);
	} else if (other.blockBySpeed && !directionless && (
			(other.xSpeed < 0 && x < other.x) ||
			(other.xSpeed > 0 && x > other.x) ||
			(other.ySpeed < 0 && y < other.y) ||
			(other.ySpeed > 0 && y > other.y) ) ){
		playSfx(sfxClank);
		
		
		
	} else {
		other.hurtTime = 20;
		other.burnTime = max(other.burnTime, burnPow);
		other.poisonTime = max(other.poisonTime, poisonPow);
		if(	other.canFreeze && (
			irandom_range(1, 100) < freezeChance || (other.weakToIce && irandom_range(1, 100) < freezeChance)
			)
		){
			
			if(other.frozenTime <= 0 && freezePow > 0){ playSfx(sfxIceBreak); }
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
			
			
			xTar = pc.x; yTar = pc.y;
			angleSpeed();
		}
		
		if(bounces >= 1 && object_index == objPlayerRang4 && choose(true, false)){
			bounces --;
			instance_create_depth(other.x, other.y - 960 , ww.layerE, objLightning, {image_angle: -90});
			other.hp -= 20;
		}
	}
}
