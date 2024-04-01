event_inherited();
image_xscale = 6;
image_yscale = 6;

hp = 340;
hpMax = 340;


shotKind = objMobShotGrobie;
shootCD = 60;
shotCDMax = 60;


bumpPow = 20;

dropsBombs = true;

drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotMossBoss]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotMossBoss;
}
dropChance = 100;