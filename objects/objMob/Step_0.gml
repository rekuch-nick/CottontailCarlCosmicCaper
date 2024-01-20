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
if(burnTime > 0){ 
	hp -= .15; 
	if(weakToFire != noone){
		sprite_index = weakToFire;
		regen = 0;
		moveSpeed --;
		weakToFire = noone;
	}
	if(dieToFire){
		hp = 0;
	}
}
if(poisonTime > 0){ hp -= .15; }
if(inert != noone){ thinkCD ++; shootCD ++; }

thinkCD --;
if(thinkCD < 1 && stunTime > 0){ thinkCD = 1; }
if(frozenTime > 0 && thinkCD < 1){ thinkCD = 1; }
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

if(frozenTime > 0 || stunTime > 0){ xSpeed = 0; ySpeed = 0; }
x += xSpeed;
y += ySpeed;
if(stopAtDis){
	disToTarget -= moveSpeed;
	if(disToTarget < 1){
		xSpeed = 0; ySpeed = 0;
	}
}


if(driftMove == Move.bull){
	y += jumpSpeed;
	if(y < yGround){ jumpSpeed += 2; } else { jumpSpeed = 0; }
	
	if(y >= yGround){ jumpSpeed = jumpPow; }
}

if(fluxScale && irandom_range(1, 4) == 1){
	image_xscale = clamp(image_xscale + choose(-.1, 0, .1), -5, 5);
	image_yscale = clamp(image_yscale + choose(-.1, 0, .1), 2, 5);
}

if(xSpeed > 0 && x > xTar){ x = xTar; xSpeed = 0; }
if(xSpeed < 0 && x < xTar){ x = xTar; xSpeed = 0; }
if(ySpeed > 0 && y > yTar){ y = yTar; ySpeed = 0; }
if(ySpeed < 0 && y < yTar){ y = yTar; ySpeed = 0; }
	


image_angle += rot * getDirection(image_xscale);
if(wob){ image_angle += choose(-4, 4); }

xTile = floor(x / 64); yTile = floor(y / 64);




if(shotKind != noone && frozenTime < 1 && stunTime < 1){
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
		if(increaseShootSpeed){
			shootCDMax = clamp(shootCDMax - 4, increaseShootSpeedMin, shootCD);
		}
		
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
		
		if(spawnOnShoot != noone && irandom_range(1, 100) < spawnOnShootChance){
			instance_create_depth(x, y, depth - 1, spawnOnShoot);
		}
	}
}


if(spec != noone && frozenTime < 1 && stunTime < 1){
	specCD --; if(specCD < 1){
		specCD = specCDMax;
		
		if(spec == imgLightning){
			if(x > pc.x && image_xscale > 0){ image_xscale *= -1; }
			if(x < pc.x && image_xscale < 0){ image_xscale *= -1; }
			xSpeed = 0; ySpeed = 0; thinkCD = 30;
			var l = instance_create_depth(x, y, ww.layerE, objLightning);
			l.image_angle = point_direction(x, y, pc.x, pc.y);
			hurtPlayer(bumpPow, false);
			pc.stunTime = max(pc.stunTime, 20);
		}
		
		if(specLimit != -1){
			specLimit --;
			if(specLimit == 0){
				spec = noone;
			}
		}
	}
}

//blockFrames
if(frozenTime > 0 || stunTime > 0){ blockTime = 0; }
if(blockFrame != noone){
	if(blockTime > 0){
		blockTime --;
		shootCD ++;
		if(blockTime < 1){ thinkCD = 0; }
		if(isSandworm && irandom_range(1, 4) == 1){
			instance_create_depth(x + irandom_range(-64, 64), y + 64, ww.layerE, objDirtChip);
			blockTime ++;
		}
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
if(incincTime > 0){ incincTime --; }


if(hp < 1){
	
	if(speedUpOnKill){ with(objMob){ if(speedUpOnKill){ moveSpeed ++; thinkCD = 0; } } }
	
	if(cubeSplitOnDeath){
		repeat(2){
			var o = object_index;
			var s = image_yscale - 2;
			
			if(s < 2 && o == objMobCube){ o = objMobCubeSmall; s = 6; }
			if(s < 2){ break; }
			
			dropChance = 0;
			var spt = instance_create_depth(x, y, depth, o);
			spt.image_xscale = s;
			spt.image_yscale = s;
			spt.incincTime = 7;
		}
	}
	
	
	if(irandom_range(0, 99) < dropChance){
		var d = instance_create_depth(x, y, ww.layerP, mobRollDrop());
		if(dropEventNumber != noone){ d.eventNumber = dropEventNumber; }
	}
	
	
	
	instance_destroy();
}

if(hp < hpMax){ hp += regen; }

if(hp < hpMax){ inert = noone; }
hpLast = hp;


depth = ww.layerM - floor(y / 10);