function worldLoardPalace09(){
	
	var egg = pc.eventTrigger[Event.palace9Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotMightShot2] ? noone : objPupMightCharm2;
	pc.palaceWaves = [
		{
			initMobs: [objMobMouth2, objMobMouth2, objMobMouth, objMobMouth],
			laterMobs: [],
			waitBetweenMobs: 45,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobKnight, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth2, objMobMouth2, objMobMouth2, objMobMouth2, objMobWormSniper, objMobWormSniper],
			laterMobs: [objMobWormSniper, objMobWormSniper, objMobWormSniper],
			waitBetweenMobs: 45,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobBat, objMobBat, objMobBat, objMobBat],
			laterMobs: [objMobSpaceEnt, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat, objMobBat],
			waitBetweenMobs: 15,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJelly, objMobSpaceJellyYel, objMobSpaceJellyYel, objMobSpaceJellyYel, objMobSpaceJellyYel, objMobSpaceJelly2, objMobSpaceJelly2],
			laterMobs: [objMobSpaceTroll, objMobSpaceTroll],
			waitBetweenMobs: 120,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobWormBig, objMobWormBig, objMobWormBig, objMobWormBig, objMobWormBig, objMobWormBig, objMobWormBig, objMobWormBig],
			laterMobs: [objMobSpaceWitch, objMobSpaceSlimeIce, objMobFrankFace, objMobWizRobe],
			waitBetweenMobs: 30,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobDragonHead, objMobDragonHead, objMobDragonHead, objMobKnight2, objMobKnight2, objMobKnight2, objMobKnight2],
			laterMobs: [objMobLike],
			waitBetweenMobs: 120,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobMouth2, objMobMouth2, objMobMouth2, objMobMouth2],
			laterMobs: [],
			waitBetweenMobs: 120,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobMouth2, objMobMouth2, objMobMouth, objMobMouth],
			laterMobs: [objMobSpaceEnt],
			waitBetweenMobs: 30,
			waitForPups: true,
			floorItem: itm,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceCrab, objMobSpaceCrab, objMobSpaceCrab, objMobSpaceCrab],
			laterMobs: [],
			waitBetweenMobs: 120,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobDragonWood],
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