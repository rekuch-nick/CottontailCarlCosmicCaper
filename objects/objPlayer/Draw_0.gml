if(debug){
	draw_set_alpha(.15);
	draw_rectangle_color(x - 32, y - 32, x + 32, y + 32, c_lime, c_yellow, c_aqua, c_white, false);
	draw_set_alpha(1);
}

if(ww.state == State.useStairs){
	draw_set_alpha(ww.stairAlpha);
	draw_rectangle_color(0, 0, ww.roomWidth, room_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	return;
}
if(ww.state == State.scroll){ return; }
if(ww.state == State.inventory){ return; }
if(ww.state == State.rocketing){
	draw_sprite_stretched(imgRocketOn, choose(0, 1, 2), x, y, 32 * 4, 32 * 4);
	
	if(ww.starYMod >= 60){
		draw_set_alpha( (ww.starYMod - 60) / 10);
		draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
	}
	
	return;
}


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

if(mutter != ""){
	draw_rectangle_color(x - 240, y - 130, x + 240, y - 50, c_black, c_black, c_black, c_black, false);
	draw_set_halign(fa_center);
	var yo = 120;
	draw_text_ext_transformed(x, y - yo, mutter, 40, 460, 1, 1, 0);
	draw_set_halign(fa_left);
	mutter = "";
}



draw_self();
if(inSpace){
	draw_sprite_stretched(imgPupStar, 0, x-(8 * image_yscale), y, 16 * image_yscale, 16 * image_yscale);
}

if(sp >= spMax && ww.state == State.play){
	var s = imgPlayerShield;
	var xo = getDirection(pc.image_xscale) == 1 ? -16 : -48;
	var yo = -20;
	if(pc.image_index == 1){ yo += 4; }
	draw_sprite_stretched(s, 0, x+xo, y+yo, 64, 64);
}

creatureDrawBuffs();

if(windUP){
	draw_sprite_ext(imgWindShield, 0, x, y, 4, 4, windAngle, c_white, random_range(.5, .8));
}

if(eventTrigger[Event.gotGlasses] && !ww.secExposed[pc.xMap, pc.yMap] && ww.secX != -1 && inOverworld && !ww.lakeDrained){
	draw_set_alpha(random_range(.2, .4));
	draw_rectangle(ww.secX * 64, ww.secY * 64, ww.secX * 64 + 64, ww.secY * 64 + 64, false);
	draw_set_alpha(1);
}

//draw_text(x, y, string(bombCounter));