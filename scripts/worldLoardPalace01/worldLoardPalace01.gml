function worldLoardPalace01(){
	
	
	var egg = pc.eventTrigger[Event.palace1Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotMap] ? noone : objPupMap;
	pc.palaceWaves = [
		{
			initMobs: [],
			laterMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			//rockKind: objSpaceRock, rockChance: 100, rockWait: 30,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceSnake],
			laterMobs: [objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm],
			laterMobs: [],
			waitBetweenMobs: 150,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake],
			laterMobs: [objMobSpaceSnake],
			waitBetweenMobs: 90,
			waitForPups: true,
			floorItem: itm,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm],
			laterMobs: [objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube],
			waitBetweenMobs: 30,
			waitForPups: true,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobWorm, objMobWorm],
			laterMobs: [objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube],
			waitBetweenMobs: 15,
			waitForPups: true,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobDragonGreen],
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