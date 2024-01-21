function worldLoardPalace04(){
	
	
	
	
	var egg = pc.eventTrigger[Event.palace4Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotMagnet] ? noone : objPupMagnet;
	pc.palaceWaves = [
		{
			initMobs: [objMobCubeSmall],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobCubeSmall, objMobCubeSmall],
			laterMobs: [objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly],
			waitBetweenMobs: 90,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 80, rockWait: 30,
		},
		{
			initMobs: [objMobWormSniper, objMobWormSniper, objMobWormSniper, objMobWormSniper],
			laterMobs: [],
			waitBetweenMobs: 120,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 80, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake],
			laterMobs: [objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 80, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple],
			laterMobs: [objMobSpaceSnakePurple, objMobSpaceSnakePurple],
			waitBetweenMobs: 40,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [],
			laterMobs: [],
			waitBetweenMobs: 30,
			waitForPups: true,
			floorItem: itm,
			rockKind: objSpaceRockSlow, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth],
			laterMobs: [objMobSpaceSnakePurple, objMobSpaceSnakePurple],
			waitBetweenMobs: 70,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 70, rockWait: 60,
		},
		{
			initMobs: [objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple],
			laterMobs: [objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobWormSniper],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 70, rockWait: 60,
		},
		{
			initMobs: [objMobSpaceSnakePurple, objMobSpaceSnake, objMobSpaceSnake],
			laterMobs: [objMobMouth, objMobCubeSmall, objMobMouth, objMobMouth, objMobMouth, objMobCubeSmall, objMobWormSniper, objMobWormSniper],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 70, rockWait: 60,
		},
		{
			initMobs: [objMobMouth],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 70, rockWait: 30,
		},
		{
			initMobs: [objMobDragonYellowSpike],
			laterMobs: [],
			waitBetweenMobs: 150,
			waitForPups: true,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 80, rockWait: 70,
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