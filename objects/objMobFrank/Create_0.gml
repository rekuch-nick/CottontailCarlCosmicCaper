event_inherited();

hp = 80;
hpMax = 80;

shotKind = objMobShot;
shootCDMax = 34;
shootCD = shootCDMax - choose(0, 10, 20);

bumpPow = 20;

dropsBombs = true;

dropChance = 75;
if(!pc.eventTrigger[Event.gotCross]){
	dropChance = 100;
	drop = objFrankToSkelly;
}