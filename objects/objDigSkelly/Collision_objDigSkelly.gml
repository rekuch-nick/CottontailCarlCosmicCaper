if(irandom_range(0, 255) == 1){
	other.image_yscale += .2;
	if(other.image_xscale > 0){
		other.image_xscale += .2;
	} else {
		other.image_xscale -= .2;
	}
	other.jumpChance += 10;
	other.moveSpeed += 1;
	other.jumpPow2 -= 2;
	
	repeat(20){
		instance_create_depth(x, y, ww.layerE, objChip);
	}
	
	instance_destroy();
}