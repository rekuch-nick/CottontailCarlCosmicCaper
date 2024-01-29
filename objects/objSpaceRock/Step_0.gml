if(ww.state != State.play){ return; }



x += xSpeed;
y += ySpeed;

if(shotKind != noone){
	shootCD --; if(shootCD < 1){
		shootCD = shootCDMax;
		if(irandom_range(0, 99) < shotChance){
			instance_create_depth(x, y, ww.layerE, shotKind);
		}
	}
}



if(y > room_height + 100){ instance_destroy(); }

