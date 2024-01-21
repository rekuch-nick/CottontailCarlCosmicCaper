if(ww.state != State.play){ return; }
if(firstFrame){
	firstFrame = false;
	
	if(offSet != 0){
		if(abs(x - xTar) > abs(y - yTar)){
			yTar += offSet * 32;
		} else {
			xTar += offSet * 32;
		}
	}
	
	angleSpeed();
	
	
	if(pointAtTarget){
		image_angle = point_direction(x, y, xTar, yTar);
	}
	
	if(sprite_index == imgPlayerBeamsCharged){ pow += 10; }
	if(sprite_index == imgPlayerBeams || sprite_index == imgPlayerBeamsCharged || sprite_index == imgPlayerBeamsPhilo){
		if(pc.eventTrigger[Event.gotMightShot]){ pow += 5; }
		if(pc.eventTrigger[Event.gotMightShot2]){ pow += 5; }
	}
	
}



image_alpha -= fade;

x += xSpeed;
y += ySpeed;

xTile = floor(x / 64);
yTile = floor(y / 64);
if(!passWall && passWallTime < 1){
	if(inBoundsTile(xTile, yTile)){
		if(ww.bmap[xTile, yTile] != noone){
			timeCD = 0;
		}
	}
	
	var rock = collision_point(x, y, objSpaceRock, true, true);
	if(rock != noone){
		if(rock.blockShots){
			timeCD = 0;
		}
	}
	
}

if(!ww.secExposed[pc.xMap, pc.yMap]){
	if(secType != noone && secType == ww.secType){
		var disMax = max(sprite_width, sprite_height) / 2;
		with(objBlock){ if(isSec){
			var dis = point_distance(x + 32, y + 32, other.x, other.y);
			if(dis <= disMax){
				xTile = floor(x / 64); yTile = floor(y / 64);
				ww.secExposed[pc.xMap, pc.yMap] = true;
				ww.bmap[xTile, yTile] = noone;
				instance_destroy();
			}
		}}
		
		
	}
}

image_xscale += gro;
image_yscale += gro;
image_angle += rot * getDirection(image_xscale);

if(speedChange != 1){
	xSpeed *= speedChange;
	ySpeed *= speedChange;
}


passWallTime = clamp(passWallTime - 1, 0, passWallTime);
timeCD --;
if(x < 0 || y < 0 || x > ww.roomWidth || y > room_height){
	timeCD = 0;
	if(isRang){ 
		bounces = 0;
		xTar = pc.x; yTar = pc.y;
		angleSpeed();
		timeCD = 30 * 30;
	}
}

if(isRang && bounces < 1){
	xTar = pc.x; yTar = pc.y; angleSpeed();
	if(point_distance(x, y, pc.x, pc.y) < 32){ timeCD = 0; }
}


if(cloneAwayFromPlayer && timeCD == 10){
	//if(x > 60 && y > 60 && x < ww.roomWidth - 60 && y < room_height - 60){
		instance_create_depth(x, y, depth, object_index);
	//}
}
	

if(timeCD < 1){
	
	
	if((object_index == objPlayerBeams) && pc.shotPower == Shot.burst){
		var s = instance_create_depth(x, y, depth, objPlayerBlastSmall);
		s.pow = pow;
	}
	
	if(object_index == objPlayerBomb){
		var s = instance_create_depth(x, y, depth, objPlayerBlastMed);
		s.pow = 40;
	}
	
	
	instance_destroy();
}