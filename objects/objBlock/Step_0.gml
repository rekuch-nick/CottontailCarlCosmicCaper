if(ww.state != State.play){ return; }

if(canPush && pc.xPushBlock == xSpot && pc.yPushBlock == ySpot && pc.pushingBlockTime > pushMax){
	pc.pushingBlockTime = 0;
	var xx = pc.xPushBlock;
	var yy = pc.yPushBlock;
	if(pc.pushBlockDir == 1){ yy --; }
	if(pc.pushBlockDir == 2){ xx ++; }
	if(pc.pushBlockDir == 3){ yy ++; }
	if(pc.pushBlockDir == 4){ xx --; }
	if(inBoundsTile(xx, yy)){
		
		
		if(ww.bmap[xx, yy] == noone){
			
			ww.bmap[xx, yy] = ww.bmap[xSpot, ySpot];
			ww.bmap[xSpot, ySpot] = noone;
			xSpot = xx;
			ySpot = yy;
		}
	}
}

if(x < xSpot * 64){ x += 2; }
if(x > xSpot * 64){ x -= 2; }
if(y < ySpot * 64){ y += 2; }
if(y > ySpot * 64){ y -= 2; }


