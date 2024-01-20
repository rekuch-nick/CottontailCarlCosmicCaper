event_inherited();
image_xscale = 4;
image_yscale = 4;
icd = 0;
depth = -900;
debug = false;
debugPossible = true;
blockInput = true;

playerInput();
mutter = "";


pushingTime = 0;

xMap = 10; yMap = 7;
	//xMap = 4; yMap = 7;

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
windAngle = 0;
windUP = true;
xIceTar = 0; yIceTar = 0; iceFace = 1;


hp = 100; hpMax = 100;
mp = 100; mpMax = 100;
coins = 0; coinsMax = 255;
sp = 0; spMax = 900;
bp = 0; bpMax = 600; bpThresh = 400;
bombs = 0; bombsMax = 8;
potion = noone;

rangsMax = 1;

wepSelected = 0;
wepLevels = [1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0];
wepCost = [10, 2, 10, 0, .5, 2, 2, 20, 20, 0 , 0];
wepCDMax = [10, 12, 25, 30, 1, 30, 30, 30, 45, 30, 1];


lionCD = irandom_range(5, 7);
lionCDMax = 7;

warpIndex = 0;
warpSpots = [
	{a: 10, b: 7},
	{a: 15, b: 6},
	{a: 11, b: 2},
	{a: 3, b: 4},
	{a: 1, b: 7},
];
holdWandTime = 0;
drainLakeSpots = [
	{a: 6, b: 2},
	{a: 11, b: 6},
	{a: 14, b: 1},
	{a: 18, b: 4},
];


for(var i=0; i<200; i++){
	eventTrigger[i] = false;
}
eventTrigger[Event.gotRang] = true;
//eventTrigger[Event.gotRang2] = true;
//eventTrigger[Event.gotStar] = true; ///
//eventTrigger[Event.gotMap] = true; ///
//eventTrigger[Event.gotChargeShot] = true; ///
//eventTrigger[Event.gotMagnet] = true; ///
//eventTrigger[Event.gotPinwheel] = true; ///
//eventTrigger[Event.gotHoneycomb] = true; ///
//eventTrigger[Event.gotRubberBand] = true; ///
//eventTrigger[Event.gotCauldren3] = true; ///
//eventTrigger[Event.gotMPShell] = true; ///
//eventTrigger[Event.gotRangPack] = true;
//wepLevels[1] = 1; eventTrigger[Event.gotStars] = true; // ninja stars
//wepLevels[2] = 1; eventTrigger[Event.gotTorch] = true; // torch
//wepLevels[4] = 1; eventTrigger[Event.gotWindStone] = true; // wind stone
//wepLevels[5] = 1; eventTrigger[Event.gotIceStone] = true; // ice stone
//wepLevels[7] = 1; eventTrigger[Event.gotHole] = true; // portable hole
//wepLevels[8] = 1; eventTrigger[Event.gotWand] = true; // wand
//wepLevels[10] = 1; eventTrigger[Event.gotPhiloStone] = true; // philostone

//eventTrigger[Event.palace1Clear] = true; ///
//eventTrigger[Event.palace2Clear] = true; ///



fullHealing = false;
healingC1 = false;
healingC2 = false;
beamChargeCD = 30;
killMemory = [
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
];




slowDown = false;












enum Event {
	owlMarksStar,
	gotStar,
	
	gotHealingHeart,
	gotMonocule,
	
	gotRang,
	gotRangPack,
	gotShield,
	gotTorch,
	gotStars,
	gotMap,
	gotChargeShot,
	gotMightShot,
	gotSpeedShot,
	gotMoreShot,
	gotChargeShot2,
	gotMightShot2,
	gotSpeedShot2,
	gotMoreShot2,
	gotMPShell,
	gotWindStone,
	gotIceStone,
	gotWand,
	gotMagnet,
	gotPinwheel,
	gotCauldren1,
	gotCauldren2,
	gotCauldren3,
	gotHoneycomb,
	gotPhiloStone,
	gotHole,
	gotRubberBand,
	gotRang2,
	
	haveBombs,
	
	
	palace1Clear,
	palace2Clear,
	palace3Clear,
	palace4Clear,
	palace5Clear,
	palace6Clear,
	palace7Clear,
	palace8Clear,
	palace9Clear,
	palace10Clear,
	palace11Clear,
	
	
	gotCarrot01,
	gotCarrot02,
	gotCarrot03,
	gotCarrot04,
	gotCarrot05,
	gotCarrot06,
	gotCarrot07,
	gotCarrot08,
	gotCarrot09,
	gotCarrot10,
	gotCarrot11,
	gotCarrot12,
	gotCarrot13,
	gotCarrot14,
	gotCarrot15,
	gotCarrot16,
	gotCarrot17,
	gotCarrot18,
	gotCarrot19,
	gotCarrot20,
	
	gotCarrotDragonGreen,
	gotCarrotDragonBlue,
	gotCarrotDragonYellow,
	gotCarrotDragonYellowSpike,
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