


if(mouse_check_button_pressed(mb_left)){
	if(mouse_x >= x && mouse_x < x + sprite_width){
		if(mouse_y >= y && mouse_y < y + sprite_height){
			if(ww.volSfx == 0){
				ww.volSfx = 100;
				image_index = 0;
			} else {
				ww.volSfx = 0;
				image_index = 1;
				audio_stop_all();
			}
		}
	}
}