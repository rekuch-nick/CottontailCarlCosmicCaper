event_inherited();

hp = 755;
hpMax = 755;

shotKind = objMobShotSeek;
shootCDMax = 40;
shootCD = shootCDMax;


bumpPow = 20;


moveSpeed = 8;

gridMove = false;
driftMove = Move.centerish;


thinkCDMax = 10;


isDragon = true;
canFreeze = false;

showHP = true;

spec = imgLightning;
specCD = 60;
specCDMax = 60;


drop = objPupCoin;
if(!pc.eventTrigger[Event.gotRang4]){
	drop = objPupRang4;
}
dropChance = 100;