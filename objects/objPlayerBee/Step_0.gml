if(ww.state != State.play){ return; }

x = pc.x + xOff;

if(approaching){
	y -= 10;
	if(y < pc.y){ approaching = false; }
} else {
	y = pc.y + 10;
	shootCD --;
	if(shootCD < 1){ 
		shootCD = shootCDMax;
		if(shootCDMax > 20){ shootCDMax --; }
		instance_create_depth(x, y, ww.layerE, objBeeBeams);
	}
}