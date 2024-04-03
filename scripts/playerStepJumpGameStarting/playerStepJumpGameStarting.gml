function playerStepJumpGameStarting(){
	
	with(objTile){ instance_destroy(); }
	with(objMob){ instance_destroy(); }
	with(objEffect){ instance_destroy(); }
	with(objPup){ instance_destroy(); }
	with(objDigBlock){ instance_destroy(); }
	
	pc.y -= 10;
	
	if(pc.y < -30){
		
		pc.y = room_height - (64 * 3);
		pc.x = ww.roomWidth / 2;
		
		for(var b=-1; b<12; b++){
			jumpGameRow(b);
		}
		
		jumpGamePlat(3, 10, 9);
		//jumpGamePlat(3, 8, 9);
		//jumpGamePlat(3, 6, 9);
		//jumpGamePlat(3, 4, 9);
		//jumpGamePlat(3, 2, 9);
		
		ww.state = State.jumpGame;
		
		pc.jumps = 0;
		pc.jumpsMax = 1;
		pc.jumpPow = -20;
		pc.hurtTime = 0;
		pc.image_index = 0;
		pc.jumpRow = 0;
	}
}