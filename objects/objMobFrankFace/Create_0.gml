event_inherited();

hp = 95;
hpMax = 95;

shotKind = objMobShotBounce;

shootCD = shootCDMax - choose(0, 10, 20);
shotCuster = 2; shotClusterMax = 2; shotClusterCDMas = 4;

bumpPow = 20;


moveSpeed = 2;

gridMove = false;
driftMove = Move.hunt;


thinkCDMax = choose(110, 120, 130);

if(!pc.eventTrigger[Event.gotCross]){
	dropChance = 100;
	drop = objFrankToSkellyFace;
}