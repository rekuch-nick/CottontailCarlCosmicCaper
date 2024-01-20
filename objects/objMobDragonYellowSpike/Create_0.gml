event_inherited();

hp = 255;
hpMax = 255;

shotKind = objMobShotSmall;
shootCDMax = 340;
shootCD = 40;
shotCuster = 9; shotClusterMax = 9; shotClusterCDMas = 3;


bumpPow = 20;


moveSpeed = 22;

gridMove = false;
driftMove = Move.hunt;
avoidEdges = 2;

thinkCDMax = 110;


isDragon = true;
canFreeze = false;

showHP = true;


drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotDragonYellowSpike]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotDragonYellowSpike;
}
dropChance = 100;