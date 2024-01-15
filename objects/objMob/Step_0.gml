if(ww.state != State.play){ return; }


if(falling){
	fallSpeed ++;
	y += fallSpeed;
	if(y >= fallTo){
		y = fallTo;
		xTile = floor(x / 64); yTile = floor(y / 64);
		falling = false;
		instance_destroy(shadowObj);
	}
	return;
}



creatureBuffDecay();
if(burnTime > 0){ hp -= .15; }
if(poisonTime > 0){ hp -= .15; }
if(inert != noone){ thinkCD ++; shootCD ++; }

thinkCD --;
if(thinkCD < 1){
	thinkCD = thinkCDMax;
	if(turnOnThink){
		image_angle += choose(90, -90);
	}
	image_angle += choose(-rotOnThink, rotOnThink);
	if(gridMove){
		mobChooseAdjacentTile();
		xTar = xTarTile * 64 + 32;
		yTar = yTarTile * 64 + 32;
	} else {
		mobChooseMoveTarget();
	}
	
	
	var angle = arctan2((yTar) - y, (xTar) - x);
	xSpeed = cos(angle) * moveSpeed;
	ySpeed = sin(angle) * moveSpeed;
	
	if(xTurn){
		if(xSpeed > 0 && image_xscale < 0){ image_xscale *= -1; }
		if(xSpeed < 0 && image_xscale > 0){ image_xscale *= -1; }
	}
}


x += xSpeed;
y += ySpeed;


if(xSpeed > 0 && x > xTar){ x = xTar; xSpeed = 0; }
if(xSpeed < 0 && x < xTar){ x = xTar; xSpeed = 0; }
if(ySpeed > 0 && y > yTar){ y = yTar; ySpeed = 0; }
if(ySpeed < 0 && y < yTar){ y = yTar; ySpeed = 0; }
	


image_angle += rot * getDirection(image_xscale);


xTile = floor(x / 64); yTile = floor(y / 64);




if(shotKind != noone){
	if(!onlyShootWhilePlayerShoots || pc.mouseLHold || pc.mouseRHold){
		shootCD --;
		if(shootFasterAsDying && hp / hpMax < .6){ shootCD --; }
		if(shootFasterAsDying && hp / hpMax < .3){ shootCD --; }
	}
	
	if(revengeShot && hp + 9 < hpLast){
		shootCD = 0;
	}
	
	
	
	if(shootCD < 1){
		shootCD = shootCDMax;
		
		if(shotClusterMax > 0){
			if(shotCuster > 0){
				shotCuster --;
				shootCD = shotClusterCDMas;
			} else {
				shotCuster = shotClusterMax;
			}
		}
		
		repeat(shootRepeat){
			var s = instance_create_depth(x, y, ww.layerE, shotKind);
			s.dropChance = 0;
		}
		
		if(shotSwap != noone){
			shotKind = shotSwap[irandom_range(0, array_length(shotSwap) - 1)];
		}
	}
}

//blockFrames
if(blockFrame != noone){
	if(blockTime > 0){
		blockTime --;
		shootCD ++;
		if(blockTime < 1){ thinkCD = 0; }
	} else {
		blockCD --;
		xSpeed = 0; ySpeed = 0;
		if(blockCD < 1){
			blockCD = blockCDMax;
			blockTime = blockCDMax;
		}
	}
}


if(shatterAtHalf && hp / hpMax <= .5){
	shatterAtHalf = false;
	if(object_index == objMobGolemBoss){
		shotKind = objMobShotRandom;
		shootRepeat = 8;
	} else {
		repeat(20){ instance_create_depth(x, y, ww.layerE, objMobShotRandom); }
	}
}


hurtTime = clamp(hurtTime - 1, 0, 60);


if(hp < 1){
	if(irandom_range(0, 99) < dropChance){
		instance_create_depth(x, y, ww.layerP, mobRollDrop());
	}
	instance_destroy();
}

if(hp < hpMax){ inert = noone; }
hpLast = hp;
