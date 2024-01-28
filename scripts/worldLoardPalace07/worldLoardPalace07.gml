function worldLoardPalace07(){
	
	
	
	var egg = pc.eventTrigger[Event.palace7Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotShield2] ? noone : objPupShield2;
	pc.palaceWaves = [
		{
			initMobs: [objMobFrankFace, objMobFrankFace, objMobFrankFace],
			laterMobs: [objMobWormBig],
			waitBetweenMobs: 60,
			waitForPups: true,
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
			waitForPups: true,
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