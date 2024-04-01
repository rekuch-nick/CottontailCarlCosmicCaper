function playerStepTitle(){
	
	show_debug_message(123123123)

	if(pc.bagPressed){
		pc.bagPressed = false;
		pc.blockInput = true;
		ww.state = State.load;
		with(objScreenTitle){ instance_destroy(); }
	}


}