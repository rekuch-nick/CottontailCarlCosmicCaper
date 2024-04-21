event_inherited();
playSfx(sfxDragonspawn);
if(pc.spaceLevel == 8){ playMusic(songBoss01); isMusicBoss = true; }

hp = 555;
hpMax = 555;

shotKind = objMobShotFuse;
shootCD = shootCDMax - choose(0, 10, 20);


bumpPow = 20;


moveSpeed = 16;

gridMove = false;
driftMove = Move.randomPoint;


thinkCDMax = 30;


isDragon = true;
canFreeze = false;

showHP = true;

spec = imgLightning;
specCD = 120;
specCDMax = 180;

drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotDragonBlack]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotDragonBlack;
}
dropChance = 100;

shatterAtHalf = true;
