function worldGetRoom(xxx, yyy){ //26 x 14
	
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		ww.fmap[a, b] = noone;
		ww.bmap[a, b] = noone;
	}}
	//ww.bmap[0, 0] = imgRock; ww.bmap[0, 11] = imgRock; ww.bmap[14, 0] = imgRock; ww.bmap[14, 11] = imgRock;
	
	ww.mapRow = 0;
	biome(Zone.grass);
	
	if(!pc.inOverworld){
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
			ww.txt = "The Dragons are attacking from SPACE, I can't believe it! \n\nOwl lives at south beach, he will know what to do.";
		}
		if(xxx == 11 && yyy == 9){ // wol's house
			ww.bmap[7, 5] = imgNPCOwl;
			pc.eventTrigger[Event.owlMarksStar] = true;
			ww.txt = "A STAR fell to the east. If you follow the beach you might just find it.";
		}
		
		
		return;
	}
	
	
	worldGetRoomGrass(xxx, yyy);
	worldGetRoomBeach(xxx, yyy);
	
	
	
	
	
	
	
	
	
	
}