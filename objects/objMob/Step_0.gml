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

if(healHP > 0){
	healHP -= 10;
	hp = clamp(hp + 10, 0, hpMax);
	if(hp >= hpMax){ healHP = 0; }
}

creatureBuffDecay();
if(burnTime > 0){ 
	hp -= .15; 
	if(pc.eventTrigger[Event.gotOil]){ hp -= .05; }
	if(weakToFire != noone){
		sprite_index = weakToFire;
		regen -= .5;
		moveSpeed -= 2;
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
	if(irandom_range(0, 99) < thinkFasterOnThinkChance){ thinkCDMax = clamp(thinkCDMax - 1, thinkFasterMin, thinkCDMax); }
	
	
	thinkCD = thinkCDMax;
	
	if(irandom_range(0, 99) < speedUpChanceOnThink){ moveSpeed = clamp(moveSpeed + 1, 0, speedUpMax); }
	
	if(irandom_range(0, 99) < forceBlockChanceOnThink){
		var xx = floor(x/64); var yy = floor(y/64);
		if(inBoundsTile(xx, yy)){
			if(ww.bmap[xx, yy] == noone){
				ww.bmap[xx, yy] = instance_create_depth(xx * 64, yy * 64, ww.layerB - yy, objBlockForce);
			}
		}
	}
	
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
	
	if(irandom_range(0, 99) < jumpChance){ jumping = true; yJumpSpeed = jumpPow; }
}

if(frozenTime > 0 || stunTime > 0){ xSpeed = 0; ySpeed = 0; }
x += xSpeed;
y += ySpeed;
ySpeed += grav;


if(blockBySpeed){
	if(image_xscale < 0){ image_xscale *= -1; }
	if(xSpeed < 0){ image_angle = -90; }
	if(xSpeed > 0){ image_angle = 90; }
	if(ySpeed > 0){ image_angle = 0; }
	if(ySpeed < 0){ image_angle = 180; }
}

if(stopAtDis){
	disToTarget -= moveSpeed;
	if(disToTarget < 1){
		xSpeed = 0; ySpeed = 0;
	}
}

if(jumping){
	yJump += yJumpSpeed;
	yJumpSpeed ++;
	if(yJump >= 0){ yJump = 0; jumping = false; }
}


if(driftMove == Move.bull || driftMove == Move.bullTop ){
	y += jumpSpeed;
	if(y < yGround){ jumpSpeed += 2; } else { jumpSpeed = 0; }
	
	if(y >= yGround){ jumpSpeed = jumpPow; }
}

if(fluxScale && irandom_range(1, 4) == 1){
	image_xscale = clamp(image_xscale + choose(-.1, 0, .1), -5, 5);
	image_yscale = clamp(image_yscale + choose(-.1, 0, .1), 2, 5);
}

if(!overMove){
	if(xSpeed > 0 && x > xTar){ x = xTar; xSpeed = 0; }
	if(xSpeed < 0 && x < xTar){ x = xTar; xSpeed = 0; }
	if(ySpeed > 0 && y > yTar){ y = yTar; ySpeed = 0; }
	if(ySpeed < 0 && y < yTar){ y = yTar; ySpeed = 0; }
} else {
	while(x > ww.roomWidth){ x--; }
	while(x < 0){ x++; }
	while(y > room_height){ y--; }
	while(y < 0){ y++; }
}
	

if(stunTime < 1 && frozenTime < 1){
	image_angle += rot * getDirection(image_xscale);
	if(wob){ image_angle += choose(-4, 4); }
}

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
		if(randomizeShootMax){
			shootCD = irandom_range(randomizeShootMaxMin, randomizeShootMaxMax);
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
			var xx = x; var yy = y;
			if(shootOffsetRange != 0){
				xx += irandom_range(-shootOffsetRange, shootOffsetRange);
				yy += irandom_range(-shootOffsetRange, shootOffsetRange);
			}
			var s = instance_create_depth(xx, yy+yJump, ww.layerE, shotKind);
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
			
			if(object_index == objMobDragonSnapYellow){
				repeat(irandom_range(3, 6)){
					instance_create_depth(irandom_range(0, 14) * 64 + 32, 32, ww.layerE, objMobShotFallDriftYel);
				}
			}
			
		}
		
		if(spec == objMobShotFire || spec == objMobShotFireDark){ repeat(specNum){
			var a = irandom_range(0, 14);
			var b = irandom_range(0, 12);
			if(object_index == objMobWindManBoss){
				if(choose(true, false)){
					a = choose(0, 1, 13, 14);
				} else {
					b = choose(0, 1, 11, 12);
				}
			}
			instance_create_depth(a*64+32, b*64+32, ww.layerE, spec);
		}}
		
		if(spec == objMobShotFallIce || objMobShotFallDragon){ 
			var a = irandom_range(0, 14);
			instance_create_depth(a*64+32, 32, ww.layerE, spec);
		}
		
		if(spec == objMobShotWind){ 
			var b = irandom_range(6, 9);
			instance_create_depth(32, b*64+32, ww.layerE, spec);
			if(hp / hpMax <= .5){
				b = irandom_range(6, 9);
				instance_create_depth(14*64+32, b*64+32, ww.layerE, objMobShotWindLeft);
			}
		}
		if(spec == objMobShotWave){ 
			if(choose(true, false)){
				for(var b=1; b<11; b++){
					instance_create_depth(0 * 64 + 32, b * 64 + 32, ww.layerE, objMobShotWave);
				}
			} else {
				for(var b=1; b<11; b++){
					instance_create_depth(14 * 64 + 32, b * 64 + 32, ww.layerE, objMobShotWaveLeft);
				}
			}
			
		}
		
		if(specSummon){
			var s = instance_create_depth(x, y, depth, spec);
			s.dropChance = 0;
		}
		
		if(specLimit != -1){
			specLimit --;
			if(specLimit == 0){
				spec = noone;
			}
		}
	}
} // end of spec

if(fadePulseDir != 0){
	image_alpha += fadePulseDir * .02;
	if(image_alpha < 0 && fadePulseSpawn != noone){
		var m = instance_create_depth(x, y, ww.layerM, fadePulseSpawn);
		m.dropChance = 0;
	}
	if(image_alpha > 1 && fadePulseDir > 0){ fadePulseDir *= -1; }
	if(image_alpha < 0 && fadePulseDir < 0){ fadePulseDir *= -1; }
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
		
		if(object_index == objMobDragonWood){
			regen = .5;
			thinkCD = 0;
			driftMove = Move.centerish;
			if(irandom_range(1, 6) == 1){ instance_create_depth(irandom_range(16, ww.roomWidth-16), 32, ww.layerE, objMobShotFall2); }
		}
		
	} else {
		blockCD --;
		
		if(object_index == objMobDragonWood){
			driftMove = Move.randomPoint;
			regen = 0;
		} else {
			xSpeed = 0; ySpeed = 0;
		}
		
		
		
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
	} else if (object_index == objMobDragonBlack) {
		sprite_index = imgMobDragonBlackShift;
		moveSpeed -= 1;
		shotKind = objMobShot2;
		shootCDMax = 17;
		hp = hpMax;
		repeat(10){ instance_create_depth(x, y, ww.layerE, objMobShotRandom); }
		repeat(4){ instance_create_depth(x, y, ww.layerM, objMobSpaceWitch); }
	} else if (object_index == objMobSpaceArmor) {
		repeat(10){ instance_create_depth(x, y, ww.layerE, objMobShotSilly2); }
	} else {
		repeat(20){ instance_create_depth(x, y, ww.layerE, objMobShotRandom); }
	}
}

if(rejectBeam){
	rejectBeamCD --;
	if(rejectBeamCD < 1){
		rejectBeamCD = rejectBeamCDMax;
		with(objAlyShot){
			if(sprite_index == imgPlayerBeams ||
				sprite_index == imgPlayerBeamsCharged ||
				sprite_index == imgPlayerBeamsPhilo ||
				sprite_index == imgBeeBeams ){
			
				if(point_distance(x, y, other.x, other.y) <= other.rejectBeamRange){
					xSpeed *= -1; ySpeed *= -1;
					fade = .04;
					timeCD = 30;
				}
			}
		}
	}
}

hurtTime = clamp(hurtTime - 1, 0, 60);
if(incincTime > 0){ incincTime --; }

if(becomeRocket){
	becomeRocketCD --;
	if(becomeRocketCD < 1 && instance_number(objMob) < 5){
		drop = objPupRocket;
		dropChance = 100;
		hp = 0;
	}
}

mobStepDamage();

if(hp < hpMax){ hp += regen; }

if(hp < hpMax){ inert = noone; }
hpLast = hp;


if(overImage != noone){
	if(irandom_range(0, 99) < overFrameChance){
		overFrame ++;
		if(overFrame > overFrameMax){ overFrame = 0; }
	}
}


depth = ww.layerM - floor(y / 10);