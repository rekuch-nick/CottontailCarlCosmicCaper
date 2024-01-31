event_inherited();

hp = 455;
hpMax = 455;

shotKind = objMobShot2;
shootCDMax = 15;
shootCD = shootCDMax;
shotCuster = 1; shotClusterMax = 1; shotClusterCDMas = 3;

bumpPow = 20;

moveSpeed = 32;
thinkCDMax = 10;

forceBlockChanceOnThink = 70;



if(!pc.eventTrigger[Event.gotCarrot16]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrot16;
}