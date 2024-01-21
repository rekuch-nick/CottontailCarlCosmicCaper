event_inherited();
image_xscale = 5;
image_yscale = 5;


hp = 120;
hpMax = 120;

shotKind = objMobShot;
shotCDMax = 100;


bumpPow = 20;

thinkCD = 30;

spec = objMobShotFire;
specNum = 6;
specCDMax = 120;
specCD = specCDMax;

dropsBombs = true;

rejectBeam = true;
rejectBeamCDMax = 4;
rejectBeamRange = 112;



drop = pc.eventTrigger[Event.gotCauldren1] ? objPupCoin : objPupCauldren1;
dropChance = 100;
dropEventNumber = noone;