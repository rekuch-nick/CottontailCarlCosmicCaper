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

drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrot32]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrot32;
}
dropChance = 100;