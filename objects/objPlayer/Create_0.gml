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

cantStair = 0;
pushingTime = 0;

//xMap = 10; yMap = 7;
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
coins = 0;
sp = 0; spMax = 900;
bp = 0; bpMax = 600; bpThresh = 400;
bombs = 0;
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


for(var i=0; i<300; i++){
	eventTrigger[i] = false;
}
eventTrigger[Event.gotRang] = true;



bombCounter = 0;
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



featherCD = 0;
slowDown = false;


pushingBlockTime = 0;
xPushBlock = 0; yPushBlock = 0;
pushBlockDir = 0;
timeOnScreen = 0;
invulnTime = 0;


playerReset();




enum Event {
	owlMarksStar,
	gotStar,
	
	gotHealingHeart,
	gotMonocule,
	gotGlasses,
	
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
	gotPoisonVial,
	gotBombBag,
	gotRing1,
	gotRing2,
	gotRing3,
	gotOil,
	gotCoinBag,
	gotCross,
	gotDiscountCard,
	gotCape,
	gotCape2,
	gotCrowbar,
	gotWindStone2,
	gotFeather,
	
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
	
	gotShopCarrot01,
	gotShopCarrot02,
	gotShopCarrot03,
	gotShopCarrot04,
	gotShopCarrot05,
	gotShopCarrot06,
	gotShopCarrot07,
	gotShopCarrot08,
	gotShopCarrot09,
	
	gotCarrotDragonGreen,
	gotCarrotDragonBlue,
	gotCarrotDragonYellow,
	gotCarrotDragonYellowSpike,
	gotCarrotDragonRed,
	gotCarrotDragonDoubleGreen,
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