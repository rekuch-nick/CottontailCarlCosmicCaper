function worldLoadPalace(){
	
	pc.palaceWave = 0;
	pc.palaceWaves = [];
	
	
	if(pc.spaceLevel == 1){
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
				initMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm],
				laterMobs: [],
				waitBetweenMobs: 150,
				waitForPups: false,
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
				floorItem: objPupCoinBag,
				rockKind: noone, rockChance: 100, rockWait: 90,
			},
		];
	}
	
	
	
}