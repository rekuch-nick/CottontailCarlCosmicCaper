event_inherited();
image_xscale = 4;
image_yscale = 4;
icd = 0;
depth = -900;


playerInput();



pushingTime = 0;

xMap = 10; yMap = 7;
//xMap = 17; yMap = 5;

xWarpPoint = x;
yWarpPoint = y;
blockMobSpawn = false;

inOverworld = true;
xOverworld = x;
yOverworld = y;


shootCD = 0;
shootCDMax = 20;


aniCD = 20;
walkFrame = 0;



hp = 100; hpMax = 100;
mp = 100; mpMax = 100;
coins = 0; coinsMax = 255;
sp = 300; spMax = 300;
bp = 300; bpMax = 300;


for(var i=0; i<100; i++){
	eventTrigger[i] = false;
}
enum Event {
	owlMarksStar,
	gotStar,
	gotHealingHeart,
	gotMonocule,
}