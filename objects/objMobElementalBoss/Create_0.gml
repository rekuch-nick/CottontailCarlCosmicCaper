event_inherited();

hp = 420;
hpMax = 420;

shotKind = objMobShotSplit;
shootCDMax = 20;
shootCDMax = 30;

shootFasterAsDying = true;
bumpPow = 20;


spawnOnShoot = objMobSlimeHot;
spawnOnShootChance = 50;


shatterAtHalf = true;
canFreeze = false;
canStun = false;
showHPTop = true;


drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotElementalBoss]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotElementalBoss;
}
dropChance = 100;