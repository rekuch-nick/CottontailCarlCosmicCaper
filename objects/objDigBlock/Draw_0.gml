draw_self();
if(hp < hpMax){
	var f = ceil((1 - (hp/hpMax)) * 6)
	draw_sprite_stretched(imgDigCrack, f, x, y, 64, 64);
}