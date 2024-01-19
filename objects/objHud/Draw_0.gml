draw_self();
frameCount ++;
if(frameCount >= 30){ frameCount = 0; }



var s = string(pc.xMap) + ", " + string(pc.yMap);
draw_text(x + 10, 244, s);

if(pc.eventTrigger[Event.gotMap]){
	draw_sprite_stretched(imgMap002, 0, x + 8, y + 8, 76 * 4, 40 * 4);
}

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

s = "$ " + string(pc.coins);
draw_text(x + 10, 422, s);
s = "B " + string(pc.bombs);
draw_text(x + 210, 422, s);


/// bars
var x1 = x + 8;
var w = max((pc.hp / pc.hpMax) * 304, 0);
var y1 = y + (44 * 4);
var y2 = y1 + 32;
draw_rectangle_color(x1, y1, x1 + w, y2, c_maroon, c_maroon, c_red, c_red, false);
draw_text(x1+4, y1+8, string(floor(pc.hp)));

if(pc.spMax > 0){
	w = max((pc.sp / pc.spMax) * 304, 0);
	y1 = y + (54 * 4);
	y2 = y1 + 20;
	draw_rectangle_color(x1, y1, x1 + w, y2, c_dkgray, c_dkgray, c_ltgray, c_ltgray, false);
}

w = max((pc.mp / pc.mpMax) * 304, 0);
y1 = y + (92 * 4);
y2 = y1 + 20;
draw_rectangle_color(x1, y1, x1 + w, y2, c_blue, c_blue, c_aqua, c_aqua, false);
draw_text(x1+4, y1+2, string(floor(pc.mp)));

if(pc.bpMax > 0){
	w = max((pc.bp / pc.bpMax) * 304, 0);
	y1 = y + (99 * 4);
	y2 = y1 + 20;
	if(pc.bp >= pc.bpThresh){
		draw_rectangle_color(x1, y1, x1 + w, y2, c_orange, c_orange, c_yellow, c_yellow, false);
	} else {
		draw_set_alpha(.4);
		draw_rectangle_color(x1, y1, x1 + w, y2, c_orange, c_orange, c_yellow, c_yellow, false);
		draw_set_alpha(1);
	}
}



var im = imgPupShotUpNormal;
if(pc.shotPower == Shot.rapid){ im = imgPupShotUpFast; }
if(pc.shotPower == Shot.wide){ im = imgPupShotUpWide; }
if(pc.shotPower == Shot.burst){ im = imgPupShotUpBurst; }
draw_sprite_stretched(im, 0, x + (8), y + (68 * 4), 64, 64);


im = imgBlank;
if(pc.wepSelected == 0){ im = imgPlayerRang; }
if(pc.wepSelected == 1){ im = imgPlayerStar; }
if(pc.wepSelected == 2){ im = imgPupTorch; }
if(pc.wepSelected == 3){ im = imgPupBomb; }
if(pc.wepSelected == 4){ im = imgPupWindStone; }
if(pc.wepSelected == 5){ im = imgPupIceStone; }
if(pc.wepSelected == 7){ im = imgPupHole; }
if(pc.wepSelected == 8){ im = imgPupWand; }
if(pc.wepSelected == 10){ im = imgPupPhiloStone; }
draw_sprite_stretched(im, 0, x + (128), y + (68 * 4), 64, 64);

//im = imgPupPotionEmpty;
im = imgBlank;
if(pc.potion != noone){ im = pc.potion; }
draw_sprite_stretched(im, 0, x + (248), y + (68 * 4), 64, 64);


for(var i=0; i<11; i++){
	if(pc.wepLevels[i] > 0){
		if(i != 3 || pc.bombs > 0){
			draw_sprite_stretched(imgWepNotSelected, 0, x + 8 + (i * 28), y + (68 * 5), 24, 24);
		}
	}
}
draw_sprite_stretched(imgWepSelected, 0, x + 8 + (pc.wepSelected * 28), y + (68 * 5), 24, 24);



if(ww.state == State.inventory){ hudDrawInventory(); }