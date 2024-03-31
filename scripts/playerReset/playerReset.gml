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

pc.xMap = 10; pc.yMap = 7;
		//pc.xMap = 1; pc.yMap = 4; ///
		//if(pc.coins < 100){ pc.coins = 100; }
		
//pc.eventTrigger[Event.gotFarShot] = true; ////


pc.inOverworld = true; // ???

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

//pc.wepLevels[9] = 1; pc.eventTrigger[Event.gotSword] = true; ////
//pc.hp = 1; pc.eventTrigger[Event.gotFeather] = true; //////

pc.featherCD = 0;


pc.holdWandTime = 0;

/*	
pc.eventTrigger[Event.palace1Clear] = true;//
pc.eventTrigger[Event.palace2Clear] = true;//
pc.eventTrigger[Event.palace3Clear] = true;//
pc.eventTrigger[Event.palace4Clear] = true;//
pc.eventTrigger[Event.palace5Clear] = true;//
pc.eventTrigger[Event.palace6Clear] = true;//
pc.eventTrigger[Event.palace7Clear] = true;//
pc.eventTrigger[Event.palace8Clear] = true;//
pc.eventTrigger[Event.palace9Clear] = true;//
pc.eventTrigger[Event.palace10Clear] = true;//
pc.eventTrigger[Event.palace11Clear] = true;//
*/	


pc.fullHealing = false;
pc.healingC1 = false;
pc.healingC2 = false;
pc.healingHP = 0;
pc.healingMP = 0;
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


pc.birdSceneStep = 0;
pc.birdSceneTime = 0;

pc.slowDown = false;



ww.state = State.load;	
	
ww.deadTime = 0;


}