if(ww.state != State.play){ return; }

if(pc.xPushBlock == xSpot && pc.yPushBlock == ySpot){ 
	if(canPush && pc.pushingBlockTime > pushMax){
		pc.pushingBlockTime = 0;
		var xx = pc.xPushBlock;
		var yy = pc.yPushBlock;
		if(pc.pushBlockDir == 1){ yy --; }
		if(pc.pushBlockDir == 2){ xx ++; }
		if(pc.pushBlockDir == 3){ yy ++; }
		if(pc.pushBlockDir == 4){ xx --; }
		if(inBoundsTile(xx, yy)){
		
		
			if(ww.bmap[xx, yy] == noone){
			
				if(!ww.secExposed[pc.xMap, pc.yMap] && xSpot == ww.secX && ySpot == ww.secY){
					ww.secExposed[pc.xMap, pc.yMap] = true;
				}
			
			
				ww.bmap[xx, yy] = ww.bmap[xSpot, ySpot];
				ww.bmap[xSpot, ySpot] = noone;
				xSpot = xx;
				ySpot = yy;
			
			
			
			}
		}
	} else if (sprite_index == imgGrave) {
		if(!used){
			used = true;
			var t = objMobGhost;
			if(pc.xMap == 0 && pc.yMap == 5){ t = objMobGhostBoss; }
			var m = instance_create_depth(x + 32, y + 32, ww.layerM, t);
			m.hurtTime = 20;
		}
	}
}

var ms = pc.eventTrigger[Event.gotCrowbar] ? 16 : 2;
if(x < xSpot * 64){ x += ms; pc.cantStair = 1; }
if(x > xSpot * 64){ x -= ms; pc.cantStair = 1; }
if(y < ySpot * 64){ y += ms; pc.cantStair = 1; }
if(y > ySpot * 64){ y -= ms; pc.cantStair = 1; }


