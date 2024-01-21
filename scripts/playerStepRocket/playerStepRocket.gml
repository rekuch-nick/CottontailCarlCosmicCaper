function playerStepRocket(){
	
	
	ww.starYMod += .1;
	if(pc.debug){ ww.starYMod += 3; }
	
	pc.x += choose(-1, 0, 0, 1);
	
	repeat( ceil(ww.starYMod ) ){
		var s = instance_create_depth(irandom_range(1, ww.roomWidth - 1), -20, 0, objStar);
		s.image_yscale += ww.starYMod * 2;
		s.ySpeed *= ceil(ww.starYMod);
		s.image_alpha = clamp(s.image_alpha, .6, 1);
	}
	
	if(ww.starYMod > 70){
		ww.starYMod = 0;
		//ww.state = State.play;
		
		//ww.state = State.warpWind;
		//xMap = warpSpots[warpIndex].a; yMap = warpSpots[warpIndex].b;
		pc.xMap = 20; pc.yMap = 4;
		pc.xWarpPoint = ww.roomWidth / 2; 
		pc.yWarpPoint = (8 * 64 + 32);
		pc.blockMobSpawn = true; pc.shootCD = 2;
		
		pc.inSpace = false;
		pc.inOverworld = true;
		pc.spaceLevel = 0;
		
		
		
		worldLoadRoom(0);
		//pc.scrollTime = room_height;
		pc.scrollTime = 0;
		pc.scrollDir = 0;
		ww.state = State.scroll;
		pc.x = pc.xWarpPoint;
		pc.y = pc.yWarpPoint;
		
		
		instance_create_depth(pc.x, pc.y, ww.layerE, objEffRocket);
		
	}
	
	
}