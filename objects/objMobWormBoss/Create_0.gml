event_inherited();
image_xscale = 10;
image_yscale = 10;

hp = 220;
hpMax = 220;

shotKind = objMobShotSilly2;
shootCDMax = 20;
shootCD = 10;

shootFasterAsDying = true;
bumpPow = 20;
weakToNinjaStars = true;

drop = pc.eventTrigger[Event.gotMoreShot] ? objPupCoin : objPupMoreCharm;
dropChance = 100;
dropEventNumber = noone;

shatterAtHalf = true;
canFreeze = false;
canStun = false;
showHPTop = true;

regen = .2;

spec = imgLightning;
specCD = 180;
specCDMax = 210;

spawnOnShoot = objMobPuffball;
spawnOnShootChance = 60;