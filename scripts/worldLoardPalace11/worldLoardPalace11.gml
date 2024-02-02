function worldLoardPalace11(){
	
	var egg = pc.eventTrigger[Event.palace11Clear] ? objPupCoinPile : objPupEgg;
	pc.palaceWaves = [
		{
			initMobs: [objMobDragonBoneKing],
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