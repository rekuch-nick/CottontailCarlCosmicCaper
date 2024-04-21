if(ww.state != State.warpWind){ return; }



x += 16;
if(y < pc.y){ y += 32; }

if(x >= pc.x){
	pc.visible = false;
}


if(x > room_width){
	pc.visible = true;
	ww.songChange = true;
	worldLoadRoom(2);
	pc.scrollTime = room_height;
	pc.scrollDir = 2;
	pc.scrollTime = ww.roomWidth;
	ww.state = State.scroll;
	pc.x = pc.xWarpPoint;
	pc.y = pc.yWarpPoint;
	
	instance_destroy();
}