event_inherited();

hp = 1255;
hpMax = 1255;

shotKind = objMobShotSeek;
shootCD = shootCDMax - choose(0, 10, 20);


bumpPow = 20;


moveSpeed = 16;

gridMove = false;
driftMove = Move.randomPoint;


thinkCDMax = 30;


isDragon = true;
canFreeze = false;

showHP = true;



drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotDragonGreen]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotDragonGreen;
}
dropChance = 100;