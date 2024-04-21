event_inherited();

hp = 255;
hpMax = 255;

shotKind = objMobShot;
shootCDMax = 30;
shootCD = shootCDMax;


bumpPow = 15;
moveSpeed = 15;

gridMove = false;
driftMove = Move.randomPoint;


playSfx(sfxDragonspawn);
if(pc.spaceLevel == 2){ playMusic(songBoss01); isMusicBoss = true; }

thinkCDMax = 35;


isDragon = true;


spec = imgLightning;
specCD = 120;
specCDMax = 180;

canFreeze = false;

showHP = true;



drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotDragonBlue]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotDragonBlue;
}
dropChance = 100;