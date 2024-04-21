event_inherited();
playSfx(sfxDragonspawn);
playMusic(songBoss01); isMusicBoss = true;

hp = 455;
hpMax = 455;

shotKind = objMobShotSilly;
shootCDMax = 28;
shootCD = 20;


bumpPow = 40;


moveSpeed = 16;

gridMove = false;
driftMove = Move.bull;
avoidEdges = 2;
jumpPow = -10; jumpSpeed = 0; yGround = y;

thinkCDMax = 30;


isDragon = true;
canFreeze = false;

showHPTop = true;



drop = objPupCoin;
if(!pc.eventTrigger[Event.gotPhiloStone]){
	drop = objPupPhiloStone;
}
dropChance = 100;