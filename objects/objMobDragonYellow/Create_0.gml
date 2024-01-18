event_inherited();

hp = 255;
hpMax = 255;

shotKind = objMobShotSmall;
shootCDMax = 140;
shootCD = 40;
shotCuster = 7; shotClusterMax = 7; shotClusterCDMas = 4;


bumpPow = 20;


moveSpeed = 12;

gridMove = false;
driftMove = Move.randomPoint;
avoidEdges = 2;

thinkCDMax = 30;


isDragon = true;
canFreeze = false;

showHP = true;


drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotDragonYellow]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotDragonYellow;
}
dropChance = 100;