event_inherited();

hp = 175;
hpMax = 175;

shotKind = objMobShotDanger;
shotCDMax = 150;
shootCD = shootCDMax - choose(0, 10, 20);
shotCuster = 2; shotClusterMax = 2; shotClusterCDMas = 10;


bumpPow = 20;


moveSpeed = 4;

gridMove = false;
driftMove = Move.huntOff;


thinkCDMax = choose(70, 80, 90);


regen = .8;
wob = true;
weakToFire = imgMobSpaceTrollWeak2;
showHP = true;