function playerStepUseStairs(){
	ww.stairAlpha += .03;
	if(ww.stairAlpha > 1){
		ww.stairAlpha = 0;
		
		with(objTile){ instance_destroy(); }
		for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
			ww.fmap[a, b] = noone;
			ww.bmap[a, b] = noone;
		}}
		
		
		if(inOverworld){
			xOverworld = xTile * 64 + 32;
			yOverworld = (yTile + 1) * 64 + 32;
			x = ww.roomWidth / 2;
			y = room_height - 64;
		} else {
			x = xOverworld;
			y = yOverworld;
		}
		inOverworld = !inOverworld;
		worldLoadRoom(0);
		ww.state = State.play;
		
		mobSpawn();
	}
}