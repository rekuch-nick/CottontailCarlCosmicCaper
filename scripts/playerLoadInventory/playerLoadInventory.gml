function playerLoadInventory(){
	
	
	pc.blockInput = true;
	ww.state = State.inventory;
	
	var s = instance_create_depth(2 * 64, 2 * 63, hud.depth - 1, objItemTooltip);
	s.eve = Event.gotStar; s.img = imgPupStar;
	s.desc = "With this star, you can survive in space. Old Turtle knows where the space doors are.";
}