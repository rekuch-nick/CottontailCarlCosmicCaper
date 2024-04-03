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

frames = 0;

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
inQuickSand = 0;

xLostHills = 0; yLostHills = 0;
xLostCaves = 0; yLostCaves = 0;


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
//rang, stars, torch, bombs, wind, ice, flail, hole, wand, sword, philo
wepLevels = [1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0];
wepCost = [5, 2, 6, 0, .5, 8, 10, 20, 20, 0 , 0];
wepCDMax = [10, 12, 25, 30, 1, 20, 30, 30, 45, 20, 1];


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
	{a: 18, b: 1},
	{a: 5, b: 0},
];


for(var i=0; i<300; i++){
	eventTrigger[i] = false;
}
eventTrigger[Event.gotRang] = true;


freeBombCDMax = 30 * 15;
freeBombCD = freeBombCDMax;
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

swordDashTime = 0;
xSwordDash = 0; 
ySwordDash = 0;

noMoveTime = 0;

playerReset();
ww.state = State.title;

surfBoardImg = imgPupSurfboard;
yBoard = 0;

frogBuys = 0;
digStage = 0;


jumps = 0;
jumpsMax = 1;
ySpeed = 0;
jumpPow = -20;
xPush = 0;
jumpRow = 0;
xLastPlat = 6;



enum Event {
	owlMarksStar,
	gotStar,
	
	gotHealingHeart,
	gotMonocule,
	gotGlasses,
	
	gotRang,
	gotRangPack,
	gotShield,
	gotShield2,
	gotShield3,
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
	gotMPShell2,
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
	gotRang3,
	gotRang4,
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
	gotPowderHorn,
	gotPowderHorn2,
	gotStrangePaw,
	gotSword,
	gotLuckyCoin,
	gotChair,
	gotWax,
	gotKeyCard,
	gotSpikeBangle,
	gotBlueBead,
	gotGreenFlake,
	gotFrog,
	gotFarShot,
	gotDoll,
	gotOrbit,
	gotOrbit2,
	haveBombs,
	gotWorkPass,
	gotShoe,
	
	
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
	gotCarrot21,
	gotCarrot22,
	gotCarrot23,
	gotCarrot24,
	gotCarrot25,
	gotCarrot26,
	gotCarrot27,
	gotCarrot28,
	gotCarrot29,
	gotCarrot30,
	gotCarrot31,
	gotCarrot32,
	gotCarrot33,
	gotCarrot34,
	gotCarrot35,
	gotCarrot36,
	gotCarrot37,
	gotCarrot38,
	gotCarrot39,
	
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
	gotCarrotWitchBoss,
	gotCarrotDragonBlack,
	gotCarrotDragonWood,
	gotCarrotElementalBoss,
	gotCarrotWindBoss,
	gotCarrotDragonBoneKing,
	gotCarrotLobberBoss,
	gotCarrotGreenSlimeBoss,
	gotCarrotMossBoss,
	gotCarrotWizBoss,
	
	gotCarrotPileDeepCave,
	
	gotBird,
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