if(sprite_index != noone){ draw_self(); }
if(txt != ""){
	draw_set_halign(fa_center);
	draw_text_transformed_color(x, y, txt, .5, .5, 0, choose(txtC1, txtC2), choose(txtC1, txtC2), choose(txtC1, txtC2), choose(txtC1, txtC2), .5);
	//draw_text_color(x, y, txt, choose(txtC1, txtC2), choose(txtC1, txtC2), choose(txtC1, txtC2), choose(txtC1, txtC2), 1);
	draw_set_halign(fa_left);
}