if(hurtTime > 0 && hurtTime % 2 == 1){ return; }

if(blockFrame != noone && blockTime > 0){
	draw_sprite_ext(blockFrame, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
} else {
	draw_self();
}
creatureDrawBuffs();
