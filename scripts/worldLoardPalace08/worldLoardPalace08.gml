function worldLoardPalace08(){
	
	
	var egg = pc.eventTrigger[Event.palace8Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotCauldren2] ? noone : objPupCauldren2;
	var itm2 = pc.eventTrigger[Event.gotSpeedShot2] ? noone : objPupSpeedCharm2;
	pc.palaceWaves = [
		{
			initMobs: [objMobLike, objMobLike, objMobLike, objMobLike],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 40, rockWait: 30,
		},
		{
			initMobs: [objMobLike, objMobLike, objMobLike, objMobLike],
			laterMobs: [objMobSpaceJelly2],
			waitBetweenMobs: 30,
			waitForPups: false,
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
			initMobs: [objMobSpaceJellyYel, objMobSpaceJellyYel, objMobSpaceJellyYel, objMobSpaceJellyYel, objMobSpaceJellyOrng, objMobSpaceJellyOrng, objMobSpaceJellyOrng, objMobSpaceJellyOrng],
			laterMobs: [objMobSpaceJelly2, objMobSpaceJelly2, objMobSpaceJelly2],
			waitBetweenMobs: 80,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch, objMobSpaceWitch],
			laterMobs: [objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball, objMobPuffball],
			waitBetweenMobs: 10,
			waitForPups: false,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 80, rockWait: 120,
		},
		{
			initMobs: [objMobKnight, objMobKnight],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 80, rockWait: 120,
		},
		{
			initMobs: [objMobKnight2, objMobKnight, objMobKnight],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 80, rockWait: 120,
		},
		{
			initMobs: [objMobKnight2, objMobSpaceJellyOrng, objMobSpaceJellyOrng, objMobSpaceJellyOrng, objMobSpaceJellyOrng],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 80, rockWait: 120,
		},
		{
			initMobs: [objMobLike, objMobLike, objMobLike, objMobLike],
			laterMobs: [objMobSpaceJelly2, objMobSpaceJelly2],
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
			floorItem: itm2,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobKnight, objMobKnight],
			laterMobs: [objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobWizRobe, objMobWizRobe],
			waitBetweenMobs: 40,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth],
			laterMobs: [objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth, objMobMouth],
			waitBetweenMobs: 30,
			waitForPups: false,
			floorItem: noone,
			rockKind: noone, rockChance: 100, rockWait: 90,
		},
		{
			initMobs: [objMobDragonBlack],
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