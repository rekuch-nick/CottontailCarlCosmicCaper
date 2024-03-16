function playerStepSurfStarting(){
	
	
	pc.y -= 10;
	if(pc.y < 0){
		
		pc.x = 200;
		ww.state = State.surfGame;
		with(objTile){ instance_destroy(); }
		with(objMob){ instance_destroy(); }
		with(objEffect){ instance_destroy(); }
		with(objPup){ instance_destroy(); }
		
		pc.ocean = instance_create_depth(0, room_height - 128, ww.layerE, objSurfOcean);
		
		pc.hurtTime = 0;
		pc.image_index = 0;
		pc.image_alpha = 1;
		
		pc.surfJumps = 1;
		pc.surfJumpsMax = 2;
		pc.yBoard = y;
		pc.image_xscale = 4;
		
		pc.surfTime = 20 * 30; //
		pc.surfTimeMax = 30 * 30;
		pc.beenSurfing = 0;
		
	}
	
}