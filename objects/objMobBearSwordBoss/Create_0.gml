event_inherited();

hp = 260;
hpMax = 260;

shotKind = objMobShot;
shootCDMax = 24;
shootCD = shootCDMax - choose(0, 10, 20);

bumpPow = 20;

showHPTop = true;

drop = objPupCoin;
if(!pc.eventTrigger[Event.gotSword]){
	drop = objPupSword;
	dropEventNumber = noone;
}
dropChance = 100;

shatterAtHalf = true;

spec = objMobShotWave;
specCDMax = 150;
specCD = 90;