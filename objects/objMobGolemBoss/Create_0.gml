event_inherited();
image_xscale = 10;
image_yscale = 10;

hp = 220;
hpMax = 220;

shotKind = objMobShot;
shootCDMax = 20;
shootCD = shootCDMax;

thinkCDMax = 20;
moveSpeed = 16;

bumpPow = 20;


drop = objPupCoin;
if(!pc.eventTrigger[Event.gotPinwheel]){
	drop = Event.gotPinwheel;
	dropEventNumber = Event.gotPinwheel;
}
dropChance = 100;


shatterAtHalf = true;

inert = imgMobArmorStill; 
thinkCD = 1;
canFreeze = false;
canStun = false;
showHPTop = true;