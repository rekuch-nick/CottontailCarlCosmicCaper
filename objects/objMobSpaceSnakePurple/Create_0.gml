event_inherited();

hp = 55;
hpMax = 55;

shotKind = objMobShot;

shotCDMax = 60;
shootCD = shootCDMax - choose(0, 10, 20);

increaseShootSpeed = true;
increaseShootSpeedMin = 20;


bumpPow = 20;


moveSpeed = 4;

gridMove = false;
driftMove = Move.randomPoint;

turnOnThink = true;

thinkCDMax = choose(110, 120, 130);

rot = 10;
weakToNinjaStars = true;