function creatureDrawBuffs(){
	if(burnTime > 0){
		
		draw_set_alpha(.4);
		var w = abs(sprite_width);
		var h = sprite_height;
		draw_sprite_stretched(imgFireEffect, choose(0, 1, 2, 3), x-w/2, y-h/2, w, h);
		draw_set_alpha(1);
	}
}