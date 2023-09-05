draw_self();
frameCount ++;
if(frameCount >= 30){ frameCount = 0; }



var s = string(pc.xMap) + ", " + string(pc.yMap);
draw_text(x + 10, 300, s);

draw_sprite_stretched(imgMap002, 0, x + 8, y + 8, 76 * 4, 40 * 4);

var xx = x + 8 + (pc.xMap * 4 * 4);
var yy = y + 8 + (pc.yMap * 4 * 4);
var c = floor(frameCount / 6) % 2 == 1 ? c_white: c_black;
draw_rectangle_color(xx+4, yy+4, xx+12, yy+12, c, c, c, c, false);



if(pc.eventTrigger[Event.owlMarksStar] && !pc.eventTrigger[Event.gotStar]){
	xx = x + 8 + (16 * 4 * 4);
	yy = y + 8 + (4 * 4 * 4);
	var c = floor(frameCount / 6) % 2 == 1 ? c_yellow : c_lime;
	draw_rectangle_color(xx+4, yy+4, xx+12, yy+12, c, c, c, c, false);
}

