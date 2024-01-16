if(hurtTime > 0 && hurtTime % 2 == 1){ return; }
if(frozenTime > 0){ image_index = 0; }

if(blockFrame != noone && blockTime > 0){
	draw_sprite_ext(blockFrame, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
} else if (inert != noone) {
	draw_sprite_ext(inert, image_index, x-sprite_width/2, y-sprite_width/2, image_xscale, image_yscale, image_angle, c_white, image_alpha);
} else {
	draw_self();
}
creatureDrawBuffs();
