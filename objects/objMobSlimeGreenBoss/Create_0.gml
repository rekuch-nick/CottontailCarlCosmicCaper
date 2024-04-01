event_inherited();

hp = 45;
hpMax = 45;


bumpPow = 20;


shotKind = objMobSlimeGreenSmall;
shootCDMax = 120;
shootCD = 30;
shotCuster = 4; shotClusterMax = 4; shotClusterCDMas = 4;


drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotGreenSlimeBoss]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotGreenSlimeBoss;
}
dropChance = 100;