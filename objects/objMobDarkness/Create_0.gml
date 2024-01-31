event_inherited();

hp = 3365;
hpMax = 3365;

shotKind = objMobShot2;
shootCDMax = 80;
shootCD = shootCDMax - choose(0, 10, 20);
shotCuster = 2; shotClusterMax = 2; shotClusterCDMas = 4;

bumpPow = 30;

moveSpeed = 4;

gridMove = false;
driftMove = Move.huntHalf;

showHPTop = true;
regen = 1;

thinkCDMax = 110;

overImage = imgMobDarknessFace;

spawnOnShoot = objMobDarkGoon;
spawnOnShootChance = 25;


spec = objMobShotFireDark;
specNum = 1;
specCDMax = 45;
specCD = specCDMax;