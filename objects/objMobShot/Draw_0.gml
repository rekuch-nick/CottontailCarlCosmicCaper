if(inertTime > 0 && inertSprite != noone){
	draw_sprite_ext(inertSprite, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
} else {
	draw_self();
}