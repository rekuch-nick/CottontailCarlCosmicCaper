function creatureDrawBuffs(){
	if(burnTime > 0){
		
		draw_set_alpha(.4);
		var w = abs(sprite_width);
		var h = sprite_height;
		draw_sprite_stretched(imgFireEffect, choose(0, 1, 2, 3), x-w/2, y-h/2, w, h);
		draw_set_alpha(1);
	}
	
	
	if(poisonTime > 0){
		
		draw_set_alpha(.4);
		var w = abs(sprite_width);
		var h = sprite_height;
		draw_sprite_stretched(imgPoisonEffect, choose(0, 1), x-w/2, y-h/2, w, h);
		draw_set_alpha(1);
	}
	
	if(frozenTime > 0){
		
		draw_set_alpha(random_range(.4, .5));
		var w = abs(sprite_width);
		var h = sprite_height;
		draw_sprite_stretched(imgFrozenEffect, choose(0, 1), x-w/2, y-h/2, w, h);
		draw_set_alpha(1);
	}
}