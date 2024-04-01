event_inherited();

hp = 755;
hpMax = 755;

shotKind = objMobShotSeek;
shootCD = shootCDMax - choose(0, 10, 20);


bumpPow = 20;


moveSpeed = 8;

gridMove = false;
driftMove = Move.randomPoint;
avoidEdges = 3;


thinkCDMax = 30;


isDragon = true;
canFreeze = false;

showHP = true;



drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotDragonBoneKing]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotDragonBoneKing;
}
dropChance = 100;