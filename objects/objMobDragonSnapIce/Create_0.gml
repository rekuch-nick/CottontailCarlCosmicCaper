event_inherited();

hp = 455;
hpMax = 455;

shotKind = objMobShotSilly;
shootCDMax = 28;
shootCD = 20;


bumpPow = 20;


moveSpeed = 16;

gridMove = false;
driftMove = Move.bullTop;
avoidEdges = 2;
jumpPow = -10; jumpSpeed = 0; yGround = y;

thinkCDMax = 30;


isDragon = true;
canFreeze = false;

showHPTop = true;



drop = objPupCoin;
if(!pc.eventTrigger[Event.gotIceStone]){
	drop = objPupIceStone;
}
dropChance = 100;


spec = objMobShotFallIce;
specCD = 30;
specCDMax = 60;