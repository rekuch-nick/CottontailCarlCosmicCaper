draw_self();
frameCount ++;
if(frameCount >= 30){ frameCount = 0; }



var s = string(pc.xMap) + ", " + string(pc.yMap);
draw_text(x + 10, 244, s);

draw_sprite_stretched(imgMap002, 0, x + 8, y + 8, 76 * 4, 40 * 4);

var xx = x + 8 + (pc.xMap * 4 * 4);
var yy = y + 8 + (pc.yMap * 4 * 4);
var c = floor(frameCount / 12) % 2 == 1 ? c_white: c_black;
draw_rectangle_color(xx+4, yy+4, xx+12, yy+12, c, c, c, c, false);



if(pc.eventTrigger[Event.owlMarksStar] && !pc.eventTrigger[Event.gotStar]){
	xx = x + 8 + (16 * 4 * 4);
	yy = y + 8 + (4 * 4 * 4);
	var c = floor(frameCount / 6) % 2 == 1 ? c_yellow : c_lime;
	draw_rectangle_color(xx+4, yy+4, xx+12, yy+12, c, c, c, c, false);
}

s = "$ " + string(pc.coins); // + " * " + string(0);
draw_text(x + 10, 422, s);



/// bars
var x1 = x + 8;
var w = (pc.hp / pc.hpMax) * 304;
var y1 = y + (44 * 4);
var y2 = y1 + 32;
draw_rectangle_color(x1, y1, x1 + w, y2, c_maroon, c_maroon, c_red, c_red, false);
draw_text(x1+4, y1+8, string(floor(pc.hp)));

if(pc.spMax > 0){
	w = (pc.sp / pc.spMax) * 304;
	y1 = y + (54 * 4);
	y2 = y1 + 20;
	draw_rectangle_color(x1, y1, x1 + w, y2, c_dkgray, c_dkgray, c_ltgray, c_ltgray, false);
}

w = (pc.mp / pc.mpMax) * 304;
y1 = y + (92 * 4);
y2 = y1 + 20;
draw_rectangle_color(x1, y1, x1 + w, y2, c_blue, c_blue, c_aqua, c_aqua, false);
draw_text(x1+4, y1+2, string(floor(pc.mp)));

if(pc.bpMax > 0){
	w = (pc.bp / pc.bpMax) * 304;
	y1 = y + (99 * 4);
	y2 = y1 + 20;
	draw_rectangle_color(x1, y1, x1 + w, y2, c_orange, c_orange, c_yellow, c_yellow, false);
}
