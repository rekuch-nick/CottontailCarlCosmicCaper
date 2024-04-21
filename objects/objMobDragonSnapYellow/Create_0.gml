event_inherited();
playSfx(sfxDragonspawn);
if(pc.spaceLevel == 10){ playMusic(songBoss01); isMusicBoss = true; }


hp = 955;
hpMax = 955;

shotKind = objMobShotSeek;
shootCDMax = 40;
shootCD = shootCDMax;


bumpPow = 30;


moveSpeed = 8;

gridMove = false;
driftMove = Move.centerish;


thinkCDMax = 10;


isDragon = true;
canFreeze = false;

showHP = true;

spec = imgLightning;
specCD = 55;
specCDMax = 55;


drop = objPupCoin;
if(!pc.eventTrigger[Event.gotRang4]){
	drop = objPupRang4;
}
dropChance = 100;