function worldGetRoomCave(xxx, yyy){
	
	biome(Zone.cave);
		
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		ww.fmap[a, b] = imgDirt;
	}}
		
	wmap("///////////////");
	wmap("///////////////");
	wmap("///////////////");
	wmap("///////////////");
	wmap("///////////////");
	wmap("/............./");
	wmap("/..F.......F../");
	wmap("/............./");
	wmap("/............./");
	wmap("/............./");
	wmap("/............./");
	wmap("//////...//////");
		
		
	if(xxx == 10 && yyy == 7){ // start screen
		ww.bmap[7, 5] = imgNPCTurtle;
		ww.txt = "The Dragons are attacking from SPACE, I can't believe it! \n\nOwl lives at the south beach, he will know what to do.";
		if(pc.eventTrigger[Event.gotStar]){
			ww.txt = "You got the STAR!\n\nTake it to the PALACE just west of here.";
		}
	}
	if(xxx == 11 && yyy == 9){ // owl's house
		ww.bmap[7, 5] = imgNPCOwl;
		pc.eventTrigger[Event.owlMarksStar] = true;
		ww.txt = "A STAR fell to the east. If you follow the beach you might just find it.\n\nI'll mark your map.";
		if(pc.eventTrigger[Event.gotStar]){
			ww.txt = "You have a STAR!\n\nTurtle knows where all the SPACE DOORS are.\n\nYou should check with him anytime you feel lost.";
		}
	}
	
	
	
	
	if(xxx == 8 && yyy == 8){
		ww.bmap[7, 6] = imgNPCDuck;
		ww.fmap[6, 6] = imgWater; ww.fmap[7, 6] = imgWater; ww.fmap[8, 6] = imgWater;
		ww.fmap[6, 7] = imgWater; ww.fmap[7, 7] = imgWater; ww.fmap[8, 7] = imgWater;
		ww.fmap[6, 8] = imgWater; ww.fmap[7, 8] = imgWater; ww.fmap[8, 8] = imgWater;
		ww.txt = "The Purple Crab Monsters shoot while you're shooting.\n\nTry just tapping the shoot button while fighting them.";
	}
	
	
	
	
	if(xxx == 9 && yyy == 7){ // lizard shop
		ww.bmap[7, 5] = imgNPCLizard;
		ww.bmap[8, 5] = imgBlank;
		ww.txt = "In dangerous times like these, Lizard Brothers Retail is the only store you can trust.";
		ww.bmap[3, 6] = noone; ww.bmap[11, 6] = noone;
		worldPopulateShop(2);
		worldPopulateShop(5);
		worldPopulateShop(9);
		worldPopulateShop(12);
		
	}
	
	
	
	ww.mapRow = 0;
	if(xxx == 8 && yyy == 6){ // palace 1
		wmap("///////////////");
		wmap("//...F...F...//");
		wmap("/.F....AAA.FF./");
		wmap("/AA.FAA...AA.F/");
		wmap("/..AA.......A./");
		wmap("/......0.....A/");
		wmap("/............./");
		wmap("/............./");
		wmap("/............./");
		wmap("/............./");
		wmap("//...........//");
		wmap("//////...//////");
		
		if(pc.eventTrigger[Event.palace1Clear]){
			ww.fmap[5, 4] = imgGrassFlowers; ww.fmap[6, 4] = imgGrassFlowers; ww.fmap[7, 4] = imgGrassFlowers; ww.fmap[8, 4] = imgGrassFlowers;
			ww.fmap[5, 5] = imgGrassFlowers; ww.fmap[6, 5] = imgGrassFlowers; ww.fmap[8, 5] = imgGrassFlowers; ww.fmap[9, 5] = imgGrassFlowers;
			ww.fmap[6, 6] = imgGrassFlowers; ww.fmap[7, 6] = imgGrassFlowers; ww.fmap[8, 6] = imgGrassFlowers;
			ww.fmap[6, 7] = imgGrassFlowers; ww.fmap[7, 7] = imgGrassFlowers;
		}
	}
}