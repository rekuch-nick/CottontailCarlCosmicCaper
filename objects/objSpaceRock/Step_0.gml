if(ww.state != State.play){ return; }



x += xSpeed;
/*
if(blockPlayer){
	if(xSpeed != 0){
		if(collision_rectangle(pc.x-pc.xFat, pc.y-pc.yFat, pc.x+pc.xFat, pc.y+pc.yFat, object_index, true, false) != noone){
			pc.x += xSpeed;
			if(pc.x >= ww.roomWidth - pc.xFat - 1 || pc.x <= pc.xFat + 1){
				repeat(4){ instance_create_depth(x, y, ww.layerE, objChip); }
				if(pc.hurtTime < 1){ hurtPlayer(30, false); }
				instance_destroy();
			}
		}
	}
}
*/



y += ySpeed;

/*
if(blockPlayer){
	if(collision_rectangle(pc.x-pc.xFat, pc.y-pc.yFat, pc.x+pc.xFat, pc.y+pc.yFat, object_index, true, false) != noone){
		
		if(pc.y > y){
			pc.y += ySpeed;
		}
		
		
		if(pc.y >= room_height - pc.yFat - 1){
			//repeat(4){ instance_create_depth(x, y, ww.layerE, objChip); }
			//if(pc.hurtTime < 1){ hurtPlayer(30, false); }
			//instance_destroy();
		}
	}
}

*/



if(y > room_height + 100){ instance_destroy(); }

