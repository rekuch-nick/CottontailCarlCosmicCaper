event_inherited();
image_xscale = 6;
image_yscale = 6;

hp = 315;
hpMax = 315;

shotKind = objMobShotSilly;
shootCDMax = 60;
shootCD = 60;
increaseShootSpeed = true;
increaseShootSpeedMin = 15;

bumpPow = 20;


moveSpeed = 12;

gridMove = false;
driftMove = Move.stayTop;


thinkCDMax = 20;
showHPTop = true;

isDragon = true;
canFreeze = false;


grav = .2; //
stopAtDis = false;
overMove = true;


//gotCarrotWitchBoss
drop = pc.eventTrigger[Event.gotCarrotWitchBoss] ? objPupCoin : objPupCarrot;
dropChance = 100;
dropEventNumber = Event.gotCarrotWitchBoss;

//spec = objMobShotWind;
//specCD = 30;
//specCDMax = 75;