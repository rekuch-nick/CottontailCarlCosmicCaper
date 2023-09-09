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
	wmap("/............./");
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
		ww.txt = "A STAR fell to the east. If you follow the beach you might just find it.";
		if(pc.eventTrigger[Event.gotStar]){
			ww.txt = "You have a STAR!\n\nTurtle knows where all the SPACE DOORS are.\n\nYou should check with him anytime you feel lost.";
		}
	}

}