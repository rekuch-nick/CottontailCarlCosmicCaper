function worldLoadPalace(){
	
	pc.palaceWave = 0;
	pc.palaceWaves = [];
	
	
	if(pc.spaceLevel == 1){
		var egg = pc.eventTrigger[Event.palace1Clear] ? objPupCoinPile : objPupEgg;
		pc.palaceWaves = [
			{
				initMobs: [],
				laterMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm],
				waitBetweenMobs: 60,
				waitForPups: false,
				floorItem: noone,
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
				initMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm],
				laterMobs: [objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube],
				waitBetweenMobs: 30,
				waitForPups: true,
				floorItem: noone,
				rockKind: noone, rockChance: 100, rockWait: 90,
			},
			{
				initMobs: [objMobDragonGreen],
				laterMobs: [],
				waitBetweenMobs: 150,
				waitForPups: false,
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
	
	
	
}