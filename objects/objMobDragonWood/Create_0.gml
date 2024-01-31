event_inherited();

hp = 955;
hpMax = 955;

shotKind = objMobShot;
shootCDMax = 40;
shootCD = shootCDMax;
randomizeShootMax = true;
randomizeShootMaxMin = 10;
randomizeShootMaxMax = 40;



bumpPow = 20;


moveSpeed = 16;

gridMove = false;
driftMove = Move.randomPoint;


thinkCDMax = 30;


isDragon = true;
canFreeze = false;

showHP = true;

//spec = imgLightning;
//specCD = 120;
//specCDMax = 180;

drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotDragonWood]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotDragonWood;
}
dropChance = 100;

blockFrame = imgMobDragonWoodBlock;
blockTime = 0;
blockCD = 30 * 12;
blockCDMax = 30 * 12;
harmlessWhileBlocking = false;


avoidEdges = 2;


