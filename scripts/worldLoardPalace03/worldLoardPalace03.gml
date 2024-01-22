function worldLoardPalace03(){
	
	var egg = pc.eventTrigger[Event.palace3Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotWindStone] ? noone : objPupWindStone;
	pc.palaceWaves = [
		{
			initMobs: [],
			laterMobs: [objMobSpaceTroll],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			//rockKind: objSpaceRock, rockChance: 100, rockWait: 30,
			rockKind: noone, rockChance: 80, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceTroll],
			laterMobs: [objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly],
			waitBetweenMobs: 90,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb, objMobSpaceBulb],
			laterMobs: [objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly],
			waitBetweenMobs: 120,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceTroll, objMobSpaceSnake, objMobSpaceSnake],
			laterMobs: [objMobSpaceSnake, objMobSpaceSnake, objMobSpaceTroll],
			waitBetweenMobs: 60,
			waitForPups: true,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm],
			laterMobs: [objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake, objMobSpaceTroll],
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
			initMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWormBig],
			laterMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm],
			waitBetweenMobs: 35,
			waitForPups: true,
			floorItem: noone,
			rockKind: noone, rockChance: 80, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime],
			laterMobs: [objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime, objMobSpaceSlime],
			waitBetweenMobs: 20,
			waitForPups: true,
			floorItem: noone,
			rockKind: objSpaceRock, rockChance: 80, rockWait: 90,
		},
		{
			initMobs: [objMobDesertFace, objMobDesertFace, objMobDesertFace, objMobDesertFace],
			laterMobs: [objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake, objMobSpaceSnake],
			waitBetweenMobs: 60,
			waitForPups: true,
			floorItem: noone,
			rockKind: objSpaceRock, rockChance: 80, rockWait: 90,
		},
		{
			initMobs: [objMobDragonYellow],
			laterMobs: [],
			waitBetweenMobs: 150,
			waitForPups: true,
			floorItem: noone,
			rockKind: objSpaceRock, rockChance: 80, rockWait: 90,
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