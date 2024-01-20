function playerReset(){
	
with(objTile){ instance_destroy(); }
with(objMob){ instance_destroy(); }
with(objEffect){ instance_destroy(); }
with(objPup){ instance_destroy(); }
with(objSpaceRock){ instance_destroy(); }
for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
	ww.fmap[a, b] = noone;
	ww.bmap[a, b] = noone;
}}
	
pc.x = 448;
pc.y = 704;
pc.image_angle = 0;
pc.image_xscale = 4;
pc.image_yscale = 4;

pc.pushingTime = 0;

pc.xMap = 10; 
pc.yMap = 7;


pc.xWarpPoint = x;
pc.yWarpPoint = y;
pc.inOverworld = true;
pc.xOverworld = x;
pc.yOverworld = y;
pc.inSpace = false;
pc.spaceLevel = 0;
pc.xCave = x;
pc.yCave = y;


pc.hp = pc.hpMax;
pc.mp = pc.mpMax;







pc.holdWandTime = 0;




pc.fullHealing = false;
pc.healingC1 = false;
pc.healingC2 = false;
pc.beamChargeCD = 30;
pc.killMemory = [
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
	{a: 0, b: 0, mobsLeft: 10},
];




pc.slowDown = false;



ww.state = State.load;	
	
ww.deadTime = 0;


}