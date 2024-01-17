event_inherited();

hp = 90;
hpMax = 90;

shotKind = noone;



moveSpeed = choose(10, 11);
thinkCDMax = 20;

bumpPow = 40;


gridMove = false;
driftMove = Move.huntOff;

drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrot03]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrot03;
}
dropChance = 100;



blockFrame = imgMobSandwormUnder;
blockTime = 0;
blockCD = 90;
blockCDMax = 150;
harmlessWhileBlocking = true;
avoidEdges = 2;
stopAtDis = true;
canStun = false;
canFreeze = false;
isSandworm = true;