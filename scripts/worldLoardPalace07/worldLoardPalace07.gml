function worldLoardPalace07(){
	
	
	
	var egg = pc.eventTrigger[Event.palace7Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotShield2] ? noone : objPupShield2;
	pc.palaceWaves = [
		{
			initMobs: [objMobFrankFace, objMobFrankFace],
			laterMobs: [objMobFrankFace, objMobWormBig],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobWizRobe],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobWizRobe],
			laterMobs: [objMobFrankFace, objMobFrankFace],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch],
			laterMobs: [objMobWormBig, objMobWormBig],
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
			initMobs: [objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceSnake, objMobSpaceSnake],
			laterMobs: [objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple],
			waitBetweenMobs: 40,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobSpaceJelly, objMobSpaceJelly],
			laterMobs: [objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple],
			waitBetweenMobs: 40,
			waitForPups: true,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobFrankFace],
			laterMobs: [objMobFrankFace, objMobFrankFace, objMobWormSniper, objMobWormSniper, objMobWormSniper, objMobWormSniper, objMobWormSniper, objMobWormSniper],
			waitBetweenMobs: 30,
			waitForPups: true,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat],
			laterMobs: [objMobSpaceTroll, objMobSpaceWitch, objMobWormBig, objMobWormBig],
			waitBetweenMobs: 25,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockNova, rockChance: 40, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly],
			laterMobs: [objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm],
			waitBetweenMobs: 20,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockNova, rockChance: 60, rockWait: 90,
		},
		{
			initMobs: [objMobCube],
			laterMobs: [],
			waitBetweenMobs: 20,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockNova, rockChance: 60, rockWait: 90,
		},
		{
			initMobs: [objMobDragonDoubleGreen],
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