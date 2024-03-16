function playerStepDigStarting(){
	
	pc.image_xscale = 4;
	pc.x += 10;
	
	if(pc.x >= ww.roomWidth){
		
		pc.y = 50;
		pc.x = 200;
		ww.state = State.digGame;
		with(objTile){ instance_destroy(); }
		with(objMob){ instance_destroy(); }
		with(objEffect){ instance_destroy(); }
		with(objPup){ instance_destroy(); }
		
		for(var a=0; a<15; a++){ for(var b=0; b<12; b++){
			ww.bmap[a][b] = noone;
		}}
		for(var a=0; a<15; a++){ for(var b=3; b<12; b++){		
			if(irandom_range(0, 99) < 80){
				ww.bmap[a][b] = choose(imgDigDirt, imgDigRock);
			}
		}}
		for(var a=0; a<15; a++){ for(var b=3; b<12; b++){
			if(ww.bmap[a, b] != noone){
				var ii = ww.bmap[a, b];
				ww.bmap[a, b] = instance_create_depth(a*64, b*64, ww.layerB, objDigBlock);
				ww.bmap[a, b].img = ii;
			} else {
				ww.bmap[a, b] = instance_create_depth(a*64, b*64, ww.layerB, objDigBlock);
				ww.bmap[a, b].img = noone;
			}
			ww.bmap[a, b].xSpot = a;
			ww.bmap[a, b].ySpot = b;
		}}
		
		//pc.ocean = instance_create_depth(0, room_height - 128, ww.layerE, objSurfOcean);
		
		pc.hurtTime = 0;
		pc.image_index = 0;
		pc.image_alpha = 1;
		
		pc.surfJumps = 1;
		pc.surfJumpsMax = 1;
		pc.image_xscale = 4;
		
		pc.pickHP = 100;
		pc.pickHPMax = 100;
		pc.digHP = 3;
		pc.digHPMax = 3;
		pc.digPow = 2;
		
		pc.timeInDig = 0;
		
		
		
	}

}