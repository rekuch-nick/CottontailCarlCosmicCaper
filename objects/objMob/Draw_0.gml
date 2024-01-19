if(showHP && inert == noone){
	var x1 = x - abs(sprite_width / 2);
	var y1 = y + sprite_height / 2;
	var y2 = y1 - 8;
	var w = abs(sprite_width);
	var percent = hp / hpMax;
	draw_rectangle_color(x1, y1, x1 + (w * percent), y2, c_maroon, c_maroon, c_red, c_red, false);
}
if(showHPTop && inert == noone){
	var x1 = x - abs(sprite_width / 2);
	var y1 = y - sprite_height / 2;
	var y2 = y1 - 8;
	var w = abs(sprite_width);
	var percent = hp / hpMax;
	draw_rectangle_color(x1, y1, x1 + (w * percent), y2, c_maroon, c_maroon, c_red, c_red, false);
}

if(hurtTime > 0 && hurtTime % 2 == 1){ return; }
if(frozenTime > 0 || stunTime > 0){ image_index = 0; }

if(blockFrame != noone && blockTime > 0){
	draw_sprite_ext(blockFrame, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
} else if (inert != noone) {
	draw_sprite_ext(inert, image_index, x-sprite_width/2, y-sprite_width/2, image_xscale, image_yscale, image_angle, c_white, image_alpha);
} else {
	draw_self();
}
creatureDrawBuffs();
