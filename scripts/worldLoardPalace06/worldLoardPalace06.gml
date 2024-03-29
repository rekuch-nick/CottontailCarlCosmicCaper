function worldLoardPalace06(){
	
	
	
	var egg = pc.eventTrigger[Event.palace6Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotWand] ? noone : objPupWand;
	pc.palaceWaves = [
		{
			initMobs: [objMobSpaceTroll],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobPencil, objMobBat, objMobBat, objMobBat, objMobBat],
			laterMobs: [objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobDesertFace, objMobCubeSmall],
			waitBetweenMobs: 45,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobWormBig, objMobBat, objMobBat, objMobBat, objMobBat],
			laterMobs: [objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple],
			waitBetweenMobs: 25,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobSpaceTroll, objMobSpaceTroll, objMobWormSniper, objMobWormSniper],
			laterMobs: [objMobSpaceWitch],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobSpaceSlime, objMobSpaceSlime, objMobWormSniper, objMobWormSniper],
			laterMobs: [objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple],
			waitBetweenMobs: 40,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobDragonGreen],
			laterMobs: [],
			waitBetweenMobs: 40,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth],
			laterMobs: [objMobSpaceJellyOrng, objMobSpaceJellyOrng, objMobSpaceJellyOrng, objMobSpaceJellyOrng],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
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
			initMobs: [objMobWormBig, objMobBat, objMobBat, objMobBat, objMobBat, objMobWormSniper, objMobWormSniper],
			laterMobs: [objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobDragonBlue],
			waitBetweenMobs: 25,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobSpaceTroll, objMobSpaceTroll],
			laterMobs: [objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJellyYel, objMobSpaceJellyYel],
			waitBetweenMobs: 25,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobDragonRed],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: true,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 60,
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