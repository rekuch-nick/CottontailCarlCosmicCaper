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





thinkCD --;
if(thinkCD < 1){
	thinkCD = thinkCDMax;
	if(gridMove){
		mobChooseAdjacentTile();
		xTar = xTarTile * 64 + 32;
		yTar = yTarTile * 64 + 32;
	} else {
				
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
	





xTile = floor(x / 64); yTile = floor(y / 64);




if(shotKind != noone){
	shootCD --;
	if(shootCD < 1){
		shootCD = shootCDMax;
		instance_create_depth(x, y, ww.layerE, shotKind);
	}
}




hurtTime = clamp(hurtTime - 1, 0, 60);


if(hp < 1){
	if(irandom_range(0, 99) < dropChance){
		instance_create_depth(x, y, ww.layerP, dropRoll);
	}
	instance_destroy();
}
