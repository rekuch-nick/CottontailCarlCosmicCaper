function worldLoardPalace02(){
	
	
	var egg = pc.eventTrigger[Event.palace2Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotChargeShot] ? noone : objPupChargeCharm;
	pc.palaceWaves = [
		{
			initMobs: [],
			laterMobs: [objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			//rockKind: objSpaceRock, rockChance: 100, rockWait: 30,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobWormBig],
			laterMobs: [objMobWormBig],
			waitBetweenMobs: 90,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobWormBig, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly],
			laterMobs: [objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly],
			waitBetweenMobs: 120,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake],
			laterMobs: [objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake],
			waitBetweenMobs: 60,
			waitForPups: true,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb],
			laterMobs: [objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb],
			waitBetweenMobs: 40,
			waitForPups: true,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [],
			laterMobs: [],
			waitBetweenMobs: 30,
			waitForPups: true,
			floorItem: itm,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm],
			laterMobs: [objMobWormBig, objMobWormBig, objMobWormBig],
			waitBetweenMobs: 75,
			waitForPups: true,
			floorItem: noone,
			rockKind: objSpaceRock, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceSnake],
			laterMobs: [objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake],
			waitBetweenMobs: 60,
			waitForPups: true,
			floorItem: noone,
			rockKind: objSpaceRock, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceSnake],
			laterMobs: [objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake],
			waitBetweenMobs: 60,
			waitForPups: true,
			floorItem: noone,
			rockKind: objSpaceRock, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobDragonBlue],
			laterMobs: [],
			waitBetweenMobs: 150,
			waitForPups: true,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [],
			laterMobs: [],
			waitBetweenMobs: 150,
			waitForPups: true,
			floorItem: egg,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
	];

}