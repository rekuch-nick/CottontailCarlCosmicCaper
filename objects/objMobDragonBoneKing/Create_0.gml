event_inherited();

hp = 755;
hpMax = 755;

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
if(!pc.eventTrigger[Event.gotCarrotDragonBoneKing]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotDragonBoneKing;
}
dropChance = 100;