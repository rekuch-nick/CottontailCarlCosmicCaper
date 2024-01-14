draw_self();

if(img != noone){
	if(pc.eventTrigger[eve]){
		draw_sprite_stretched(img, 0, x, y, 64, 64);
		
		if(mouse_x >= x && mouse_x < x + sprite_width){
			if(mouse_y >= y && mouse_y < y + sprite_height){
				draw_text_ext(90, 600, desc, 32, 800);
			}
		}
	}
}