event_inherited();
image_xscale = 5; image_yscale = 5;

canWalkLava = true;
canWalkWater = true;

hp = 490;
hpMax = 490;

shotKind = objMobShotRandom2;
shootCDMax = 8;
shootCD = shootCDMax;

bumpPow = 20;



dropsBombs = true;



moveSpeed = 6;
thinkCDMax = 15;
huntChance = 65;



spec = objMobShotFire;
specNum = 6;
specCDMax = 20;
specCD = specCDMax;



weakToWind = true;

drop = objPupCoin;
if(!pc.eventTrigger[Event.gotCarrotWindBoss]){
	drop = objPupCarrot;
	dropEventNumber = Event.gotCarrotWindBoss;
}
dropChance = 100;