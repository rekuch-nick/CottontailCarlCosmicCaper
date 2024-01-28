if(ww.state == State.scroll){ return; }
draw_self();

if(coinPrice > 0){
	draw_set_halign(fa_center);
	draw_text_color(x, y - 64, "-$" + string(coinPrice), txtColor, txtColor, txtColor, txtColor, 1);
	draw_set_halign(fa_left);
} else if(txt != ""){
	draw_set_halign(fa_center);
	draw_text_color(x, y + yTxtOffset, txt, txtColor, txtColor, txtColor, txtColor, 1);
	draw_set_halign(fa_left);
}