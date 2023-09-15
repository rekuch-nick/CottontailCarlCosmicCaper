event_inherited();
image_xscale = 4;
image_yscale = 4;
icd = 0;
depth = -900;


playerInput();
mutter = "";


pushingTime = 0;

xMap = 10; yMap = 7;
	//xMap = 12; yMap = 6;

xWarpPoint = x;
yWarpPoint = y;
blockMobSpawn = false;

inOverworld = true;
xOverworld = x;
yOverworld = y;
inSpace = false;
spaceLevel = 0;
xCave = x;
yCave = y;


shootCD = 0;
shootCDMax = 20;
shotAmount = 1;


aniCD = 20;
walkFrame = 0;



hp = 100; hpMax = 100;
mp = 100; mpMax = 100;
coins = 0; coinsMax = 255;
sp = 0; spMax = 900;
bp = 0; bpMax = 600;
bombs = 0; bombsMax = 8;


rangsMax = 1;

wepSelected = 0;
wepLevels = [1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0];
wepCost = [10, 2, 10, 0, 2, 2, 2, 2, 2, 2 , 2];
wepCDMax = [30, 12, 25, 30, 30, 30, 30, 30, 30, 30, 30];


lionCD = irandom_range(5, 7);
lionCDMax = 7;


for(var i=0; i<100; i++){
	eventTrigger[i] = false;
}
enum Event {
	owlMarksStar,
	gotStar,
	gotHealingHeart,
	gotMonocule,
	
	gotShield,
	
	
	
	palace1Clear,
	palace2Clear,
	palace3Clear,
	palace4Clear,
	palace5Clear,
	palace6Clear,
	palace7Clear,
	palace8Clear,
	palace9Clear,
}

shotPower = noone;
enum Shot {
	rapid,
	burst,
	wide,
}


//xMap = 8; yMap = 6;
//eventTrigger[Event.palace1Clear] = true;
//eventTrigger[Event.gotStar] = true;

//eventTrigger[Event.gotShield] = true; 
//bombs = 8;
//coins = 925;