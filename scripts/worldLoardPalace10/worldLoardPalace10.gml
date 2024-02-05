function worldLoardPalace10(){
	
	var egg = pc.eventTrigger[Event.palace10Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotHole] ? noone : objPupHole;
	var itm2 = pc.eventTrigger[Event.gotMoreShot2] ? noone : objPupMoreCharm2;
	pc.palaceWaves = [
		{
			initMobs: [objMobKnight3, objMobKnight3],
			laterMobs: [objMobSpaceJelly2, objMobSpaceJelly2, objMobSpaceJelly2, objMobSpaceJelly2],
			waitBetweenMobs: 30,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobLike, objMobLike, objMobLike, objMobLike, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth2, objMobMouth2, objMobMouth2, objMobMouth2, objMobMouth2, objMobMouth2, objMobMouth2],
			laterMobs: [objMobWormSniper, objMobWormSniper, objMobWormSniper, objMobWormSniper, objMobWormSniper],
			waitBetweenMobs: 30,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobDragonGreen, objMobSpaceTroll, objMobSpaceTroll, objMobSpaceJellyOrng, objMobSpaceJellyOrng, objMobSpaceJellyYel, objMobSpaceJellyYel],
			laterMobs: [objMobWormBig, objMobKnight3],
			waitBetweenMobs: 180,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 70, rockWait: 60,
		},
		{
			initMobs: [objMobDragonYellow, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRock, rockChance: 70, rockWait: 60,
		},
		{
			initMobs: [objMobCubeSmall, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobWorm, objMobFrankFace, objMobFrankFace],
			laterMobs: [objMobDragonBlue, objMobDragonBlue],
			waitBetweenMobs: 180,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockNova, rockChance: 70, rockWait: 60,
		},
		{
			initMobs: [objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch],
			laterMobs: [objMobSpaceEnt, objMobSpaceEnt],
			waitBetweenMobs: 180,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 70, rockWait: 60,
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
			initMobs: [objMobSpaceArmor, objMobSpaceArmor, objMobSpaceArmor],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 70, rockWait: 60,
		},
		{
			initMobs: [objMobSpaceArmor, objMobSpaceArmor, objMobSpaceArmor, objMobSpaceArmor, objMobSpaceArmor, objMobSpaceArmor, objMobFrankFace, objMobFrankFace],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 70, rockWait: 60,
		},
		{
			initMobs: [objMobKnight3, objMobKnight3, objMobWormBig, objMobWormBig],
			laterMobs: [objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube, objMobTube],
			waitBetweenMobs: 20,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockNova, rockChance: 50, rockWait: 60,
		},
		{
			initMobs: [objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple, objMobSpaceSnakePurple],
			laterMobs: [objMobSpaceJellyYel, objMobSpaceJellyYel, objMobSpaceJellyYel, objMobSpaceJellyYel, objMobSpaceJellyYel, objMobSpaceJellyYel],
			waitBetweenMobs: 20,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 50, rockWait: 60,
		},
		{
			initMobs: [objMobSpaceTroll2, objMobSpaceTroll2, objMobSpaceTroll2, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat2, objMobBat2, objMobBat2, objMobBat2, objMobBat2, objMobBat2, objMobBat2, objMobBat2],
			laterMobs: [objMobBat2, objMobBat2, objMobBat2, objMobBat2, objMobBat2, objMobBat2, objMobBat2, objMobBat2],
			waitBetweenMobs: 20,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 50, rockWait: 40,
		},
		
		
		
		
		{
			initMobs: [],
			laterMobs: [],
			waitBetweenMobs: 30,
			waitForPups: true,
			floorItem: itm2,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobDragonSnapYellow],
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