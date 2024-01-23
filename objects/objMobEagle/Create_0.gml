event_inherited();

hp = 355;
hpMax = 355;

shotKind = objMobShotSilly;
shootCDMax = 28;
shootCD = 20;


bumpPow = 20;


moveSpeed = 16;

gridMove = false;
driftMove = Move.stayTop;


thinkCDMax = 20;


isDragon = true;
canFreeze = false;

showHPTop = true;

grav = .2; //
stopAtDis = false;
overMove = true;

drop = objPupCoin;
if(!pc.eventTrigger[Event.gotFeather]){
	drop = objPupFeather;
}
dropChance = 100;


spec = objMobShotWind;
specCD = 30;
specCDMax = 75;