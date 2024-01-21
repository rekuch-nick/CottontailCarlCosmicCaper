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

for(var a=0; a<30; a++){ for(var b=0; b<20; b++){
	secExposed[a, b] = false;
	caveCoins[a, b] = 0;
}}
caveCoins[7, 4] = 20;
caveCoins[10, 8] = 20;
caveCoins[5, 3] = 10;
caveCoins[6, 3] = 10;
caveCoins[13, 7] = 20;


for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
	fmap[a, b] = noone;
	bmap[a, b] = noone;
}}



stairAlpha = 0;
canLion = true;
noMobs = false;
noFall = false;
noWet = false;
overrideWet = noone;
lakeDrained = false;

deadTime = 0;
starYMod = 0;

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
	dying,
	rocketing,
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
	moon,
}

enum Move {
	randomPoint,
	hunt,
	huntOff,
	stayTop,
	avoid,
	bull,
	huntHalf,
	huntLine,
	bullTop,
}

enum Sec {
	push, burn, bomb
}