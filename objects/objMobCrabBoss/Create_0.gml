event_inherited();
image_xscale = 10;
image_yscale = 10;

hp = 220;
hpMax = 220;

shotKind = objMobShot;
shootCDMax = 20;
shootCD = shootCDMax - choose(0, 10, 20);

shootFasterAsDying = true;
bumpPow = 20;
shotSwap = [objMobShotRandom, objMobShot];


drop = pc.eventTrigger[Event.gotMPShell] ? objPupCoin : objPupMPShell;
dropChance = 100;
dropEventNumber = noone;

shatterAtHalf = true;
canFreeze = false;
canStun = false;
showHPTop = true;