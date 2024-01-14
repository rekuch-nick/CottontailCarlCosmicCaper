function playerStepInventory(){
	
	
	
	if(!blockInput && bagPressed){
		blockInput = true;
		ww.state = State.play;
		with(objItemTooltip){ instance_destroy(); }
		return;
	}

}