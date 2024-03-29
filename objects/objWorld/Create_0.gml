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
caveCoins[1, 2] = 60;
caveCoins[1, 3] = 20;
caveCoins[6, 7] = 30;
caveCoins[15, 3] = 40;
caveCoins[17, 3] = 40;
caveCoins[15, 7] = 30;
caveCoins[16, 8] = 30;
caveCoins[8, 0] = 35;
caveCoins[8, 1] = 35;
caveCoins[14, 2] = 35;
caveCoins[17, 9] = 50;
caveCoins[12, 6] = 35;
caveCoins[4, 8] = 60;
caveCoins[5, 0] = 200;
caveCoins[9, 6] = 40;
caveCoins[9, 3] = 30;
caveCoins[10, 2] = 100;




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
	birdRez,
	surfStart,
	surfGame,
	surfEnd,
	birdScene,
	digStart,
	digGame,
	digEnd,
	jumpStart,
	jumpGame,
	jumpEnd,
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
	deepCave,
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
	randomWarp,
	randomOrth,
	huntOrth,
	centerish,
}

enum Sec {
	push, burn, bomb, state
}