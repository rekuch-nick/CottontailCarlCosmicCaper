event_inherited();
image_xscale = 4; image_yscale = 4;



shadowObj = noone;
fallSpeed = 0;
falling = false;
fallTo = y;

xTile = floor(x / 64);
yTile = floor(y / 64);

disToTarget = 1000;
stopAtDis = false;
thinkCD = 0;
thinkCDMax = choose(40, 50, 60);
moveSpeed = 8;
xLast = xTile;
yLast = yTile;
canBackupChance = 20;
canStandStillChance = 50;
huntChance = 60;
driftMove = noone;
grav = 0;
overMove = false;
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
shootRepeat = 1;
onlyShootWhilePlayerShoots = false;
revengeShot = false;
shatterAtHalf = false;
inert = noone;

bumpPow = 20;
bumpPoison = 0;

dropChance = 50;
dropsBombs = false;
dropsPotions = true;
drop = noone;
dropEventNumber = noone;

turnOnThink = false;
shootFasterAsDying = false;
shotSwap = noone;

blockFrame = noone;
blockTime = 0;
blockCD = 0;
blockCDMax = 90;
harmlessWhileBlocking = false;

spec = noone;
specCD = 0;
specCDMax = 0;
specLimit = -1;
specNum = 0;

showHP = false;
showHPTop = false;

regen = 0;
wob = false;
weakToFire = noone;
dieToFire = false;
weakToRang = false;
goldFrame = noone;

increaseShootSpeed = false;
increaseShootSpeedMin = 30;
cubeSplitOnDeath = false;

jumpPow = 0; jumpSpeed = 0; yGround = y;

incincTime = 0;

fluxScale = false;

spawnOnShoot = noone;
spawnOnShootChance = 0;
speedUpOnKill = false;

rejectBeam = false;
rejectBeamRange = 128;
rejectBeamCDMax = 45;
rejectBeamCD = rejectBeamCDMax;

becomeRocket = false;
becomeRocketCD = 30 * 3;