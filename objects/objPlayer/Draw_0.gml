if(ww.state == State.useStairs){
	draw_set_alpha(ww.stairAlpha);
	draw_rectangle_color(0, 0, ww.roomWidth, room_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	return;
}
if(ww.state == State.scroll){ return; }



if(ww.txt != "" && ww.txtTime > 0){
	draw_rectangle_color(32, 32, ww.roomWidth - 32, 320 - 32, c_white, c_white, c_white, c_white, false);
	draw_rectangle_color(40, 40, ww.roomWidth - 40, 320 - 40, c_black, c_black, c_black, c_black, false);
	
	var s = ww.txt;
	var sl = string_length(s);
	var slMax = ceil(ww.txtTime / 1.5);
	if(sl > slMax){
		s = string_delete(s, slMax, string_length(s) );
	}
	
	draw_text_ext_transformed(48, 48, s, 32, (ww.roomWidth - (48 * 2)), 1, 1, 0);
}





draw_self();