event_inherited();
image_xscale = 6; image_yscale = 6;

hp = 140;
hpMax = 140;

shotKind = objMobShotLob;
shootCD = 20;
shotCDMax = 30;
shotCuster = 1; shotClusterMax = 1; shotClusterCDMas = 10;


bumpPow = 20;

moveSpeed = 2;
thinkCDMax = 20;

drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotLobberBoss]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotLobberBoss;
}
dropChance = 100;