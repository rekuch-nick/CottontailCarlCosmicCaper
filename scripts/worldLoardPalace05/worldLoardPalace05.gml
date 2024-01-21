function worldLoardPalace05(){
	
	
	var egg = pc.eventTrigger[Event.palace5Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotPoisonVial] ? noone : objPupPoisonVial;
	pc.palaceWaves = [
		{
			initMobs: [objMobCubeSmall],
			laterMobs: [],
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
			initMobs: [objMobDragonSnapIce],
			laterMobs: [],
			waitBetweenMobs: 60,
			waitForPups: true,
			floorItem: noone,
			rockKind: objSpaceRockSlow, rockChance: 100, rockWait: 60,
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