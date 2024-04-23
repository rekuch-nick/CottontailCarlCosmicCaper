event_inherited();

hp = 80;
hpMax = 80;

shotKind = objMobShot;
shootCDMax = 24;
shootCD = shootCDMax - choose(0, 10, 20);

bumpPow = 20;

dropsBombs = true;

weakToOrbit = true;

if(choose(true, false)){
	drop = objPupBomb;
	dropChance = 100;
}