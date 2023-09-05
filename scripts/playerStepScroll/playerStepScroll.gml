function playerStepScroll(){
	var ss = 32;
	scrollTime -= ss;
	if(scrollDir == 1){ with(objTile){ y += ss; } }
	if(scrollDir == 2){ with(objTile){ x -= ss; } }
	if(scrollDir == 3){ with(objTile){ y -= ss; } }
	if(scrollDir == 4){ with(objTile){ x += ss; } }
	if(scrollTime < 1){
		with(objTile){
			if(x < 0 || y < 0 || x >= ww.roomWidth || y >= room_height){
				instance_destroy();
			}
		}
		ww.state = State.play;
		
		mobSpawn();
		return;
	}

}