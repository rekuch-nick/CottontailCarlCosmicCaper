event_inherited();

hp = 35;
hpMax = 35;
moveSpeed = 1;

shotKind = objMobShotLine;
shootCDMax = 30 * 3;
shotCuster = 1; shotClusterMax = 1; shotClusterCDMas = 10;
shootCD = shootCDMax;


bumpPow = 20;

dieToFire = true;

if(!pc.eventTrigger[Event.gotCross]){
	dropChance = 100;
	drop = objFrankToSkelly;
}