event_inherited();
image_xscale = 10;
image_yscale = 10;

hp = 220;
hpMax = 220;

shotKind = objMob;
shootCDMax = 45;
shootCD = shootCDMax - choose(0, 10, 20);



drop = pc.eventTrigger[Event.gotSpeedShot] ? objPupCoin : objPupSpeedCharm;
dropChance = 100;

//shatterAtHalf = true;
canFreeze = false;

showHPTop = true;