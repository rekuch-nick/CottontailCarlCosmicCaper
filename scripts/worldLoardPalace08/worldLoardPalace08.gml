function worldLoardPalace08(){
	
	
	var egg = pc.eventTrigger[Event.palace8Clear] ? objPupCoinPile : objPupEgg;
	var itm = pc.eventTrigger[Event.gotWand] ? noone : objPupCauldren2;
	pc.palaceWaves = [
		{
			initMobs: [objMobFrankFace],
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