event_inherited();

hp = 545;
hpMax = 545;

shotKind = objMobShot2;
shootCDMax = 190;
shootCD = shootCDMax;
shotCuster = 9; shotClusterMax = 9; shotClusterCDMas = 7;


bumpPow = 30;


moveSpeed = 15;

gridMove = false;
driftMove = Move.randomPoint;
avoidEdges = 1;

thinkCDMax = 50;


isDragon = true;
canFreeze = false;
showHP = true;

spec = objMobShotFire;
specNum = 8;
specCDMax = 90;
specCD = specCDMax;

shatterAtHalf = true;
regen = .02;


drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotDragonRed]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotDragonRed;
}
dropChance = 100;