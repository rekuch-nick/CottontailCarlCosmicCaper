function playerStepTitle(){
	
	
	

	if(pc.bagPressed){
		
		if(keyboard_check(vk_shift)){
			fileResetPlayer();
			fileResetWorld();
		}
		
		
		ww.songChange = true;
		pc.bagPressed = false;
		pc.blockInput = true;
		ww.state = State.load;
		with(objScreenTitle){ instance_destroy(); }
	}


}