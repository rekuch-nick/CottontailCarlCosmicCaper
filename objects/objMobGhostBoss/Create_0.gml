event_inherited();
image_xscale = 8; image_yscale = 8;


hp = 445;
hpMax = 445;

fadePulseDir = -1;
fadePulseSpawn = objMobGhostWeak;

shotKind = objMobShotTracer;
shootCDMax = 30 * 3;
shootCD = shootCDMax;

showHP = true;

bumpPow = 20;

thinkCDMax = 32;
moveSpeed = 2;

dropsBombs = true;

drop = pc.eventTrigger[Event.gotMightShot] ? objPupCoin : objPupMightCharm;
dropChance = 100;
dropEventNumber = noone;
isDragon = true;