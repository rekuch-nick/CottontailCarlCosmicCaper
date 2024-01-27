function worldLoardPalace05(){
	
	
	var egg = pc.eventTrigger[Event.palace5Clear] ? objPupCoinPile : objPupEgg;
	//var itm = pc.eventTrigger[Event.gotPoisonVial] ? noone : objPupPoisonVial;
	pc.palaceWaves = [
		{
			initMobs: [objMobSpaceSlimeIce, objMobSpaceSlimeIce, objMobSpaceSlimeIce, objMobSpaceSlimeIce],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobSpaceSlimeIce, objMobSpaceSlimeIce, objMobSpaceSlimeIce, objMobSpaceSlimeIce],
			laterMobs: [objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat,objMobBat, objMobBat],
			laterMobs: [objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly],
			waitBetweenMobs: 30,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWormSniper, objMobWormSniper],
			laterMobs: [],
			waitBetweenMobs: 30,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 50, rockWait: 30,
		},
		{
			initMobs: [objMobWormBig, objMobWormBig, objMobWorm, objMobWorm, objMobWormSniper, objMobWormSniper, objMobWormSniper, objMobWormSniper],
			laterMobs: [],
			waitBetweenMobs: 30,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 50, rockWait: 30,
		},
		{
			initMobs: [objMobWormBig, objMobWormBig, objMobSpaceSlimeIce, objMobSpaceSlimeIce, objMobSpaceSlimeIce, objMobSpaceSlimeIce, objMobSpaceSlimeIce],
			laterMobs: [objMobSpaceWitch, objMobSpaceWitch],
			waitBetweenMobs: 30,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 50, rockWait: 30,
		},
		{
			initMobs: [objMobSpaceWitchBoss],
			laterMobs: [],
			waitBetweenMobs: 30,
			waitForPups: true,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 50, rockWait: 30,
		},
		//{
		//	initMobs: [],
		//	laterMobs: [],
		//	waitBetweenMobs: 30,
		//	waitForPups: true,
		//	floorItem: itm,
		//	rockKind: noone, rockChance: 100, rockWait: 90,
		//},
		{
			initMobs: [objMobDragonSnapIce],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: true,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 100, rockWait: 60,
		},
		{
			initMobs: [],
			laterMobs: [],
			waitBetweenMobs: 150,
			waitForPups: true,
			floorItem: egg,
			rockKind: noone, rockChance: 100, rockWait: 60,
		},
	];

}