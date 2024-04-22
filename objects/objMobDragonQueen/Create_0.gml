event_inherited();
playSfx(sfxDragonspawn);
if(pc.spaceLevel == 12){ playMusic(songBoss04); isMusicBoss = true; }

hp = 755;
hpMax = 755;

shotKind = objMobShotSeekMine;
shootCD = shootCDMax - choose(0, 10, 20);


bumpPow = 20;


moveSpeed = 8;

gridMove = false;
driftMove = Move.randomPoint;
avoidEdges = 3;


thinkCDMax = 30;


isDragon = true;
canFreeze = false;

showHP = true;



