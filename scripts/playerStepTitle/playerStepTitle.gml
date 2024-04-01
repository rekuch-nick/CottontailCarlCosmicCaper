function playerStepTitle(){
	

	if(pc.bagPressed){
		pc.bagPressed = false;
		pc.blockInput = true;
		ww.state = State.load;
		with(objScreenTitle){ instance_destroy(); }
	}


}