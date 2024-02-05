event_inherited();

hp = 355;
hpMax = 355;

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
regen = .4;


drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotDragonDoubleGreen]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotDragonDoubleGreen;
}
dropChance = 100;


headSpawn = objMobDragonHead;
headSpawnNum = 3;