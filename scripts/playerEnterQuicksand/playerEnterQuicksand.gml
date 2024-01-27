function playerEnterQuicksand(){
	with(objMob){ instance_destroy(); }
	with(objPup){ instance_destroy(); }
	with(objEffect){ instance_destroy(); }
	with(objTile){ instance_destroy(); }
	
	
	pc.xMap = 1; pc.yMap = 11;
	pc.xWarpPoint = ww.roomWidth / 2; 
	pc.yWarpPoint = (8 * 64 + 32);
	pc.blockMobSpawn = true; pc.shootCD = 2;
		
	pc.inSpace = false;
	pc.inOverworld = true;
	pc.spaceLevel = 0;
		
		
		
	worldLoadRoom(0);
	//pc.scrollTime = room_height;
	pc.scrollTime = 0;
	pc.scrollDir = 0;
	ww.state = State.scroll;
	pc.x = pc.xWarpPoint;
	pc.y = pc.yWarpPoint;

}