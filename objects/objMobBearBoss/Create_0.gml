event_inherited();

hp = 80;
hpMax = 80;

shotKind = objMobShot;
shootCDMax = 24;
shootCD = shootCDMax - choose(0, 10, 20);

bumpPow = 20;

dropsBombs = true;

drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrot01]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrot01;
}
dropChance = 100;