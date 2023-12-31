room_speed = 30;
state = State.load;

roomWidth = hud.x;
W = 15;
H = 12;

layerF = -10;
layerB = -100;
layerP = -200;
layerM = -300;
layerE = -400;


mobList = noone;

draw_set_font(fntPlain);
txt = "";
txtTime = 0;

for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
	fmap[a, b] = noone;
	bmap[a, b] = noone;
}}



stairAlpha = 0;




enum State {
	play,
	title,
	scroll,
	load,
	useStairs,
	warpWind,
	enteringSpace,
	leaveSpace,
	pause,
	inventory,
}

enum Zone {
	grass,
	cave,
	forest,
	redForest,
	longGrass,
	beach,
	desert,
	jungle,
	deepForest,
	volcano,
	hills,
	grave,
	snow,
	darkHills,
	waste,
	sparse,
}

enum Move {
	randomPoint,
	hunt,
	stayTop,
	avoid,
}