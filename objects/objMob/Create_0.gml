event_inherited();
image_xscale = 4; image_yscale = 4;



shadowObj = noone;
fallSpeed = 0;
falling = false;
fallTo = y;

xTile = floor(x / 64);
yTile = floor(y / 64);


thinkCD = 0;
thinkCDMax = choose(40, 50, 60);
moveSpeed = 8;
xLast = xTile;
yLast = yTile;
canBackupChance = 20;
canStandStillChance = 50;
huntChance = 60;

xTarTile = xTile;
yTarTile = yTile;

hurtTime = 0;

rot = 0;
rotOnThink = 0;

hp = 15;
hpMax = 15;
hpLast = hp;

shotKind = objMobShotShort;
shootCDMax = 30 * 3;
shootCD = shootCDMax - choose(0, 10, 20);
shotCuster = 0; shotClusterMax = 0; shotClusterCDMas = 20;
onlyShootWhilePlayerShoots = false;
revengeShot = false;

bumpPow = 20;

dropChance = 50;
dropsBombs = false;

turnOnThink = false;


blockFrame = noone;
blockTime = 0;
blockCD = 0;
blockCDMax = 90;
