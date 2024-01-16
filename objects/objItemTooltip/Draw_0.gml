draw_self();

for(var ii=9; ii>=0; ii--){
	if(img[ii] != noone){
		if(pc.eventTrigger[eve[ii]]){
			i = ii;
			break;
		}
	}
}


if(img[i] != noone){
	if(pc.eventTrigger[eve[i]]){
		draw_sprite_stretched(img[i], 0, x, y, 64, 64);
		
		if(mouse_x >= x && mouse_x < x + sprite_width){
			if(mouse_y >= y && mouse_y < y + sprite_height){
				draw_text_ext(90, 600, desc[i], 32, 800);
			}
		}
	}
}