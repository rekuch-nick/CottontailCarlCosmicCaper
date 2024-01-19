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
		ww.txt = "The Dragons are attacking from SPACE, I can't believe it! \n\nOwl lives at the beach to the south, he will know what to do.";
		if(pc.eventTrigger[Event.gotStar]){
			ww.txt = "You got the STAR!\n\nTake it to the PALACE just west of here.";
		}
		if(pc.eventTrigger[Event.palace1Clear]){
			ww.txt = "You'll need a torch to find the next SPACE DOOR. The Lizard Brother's store near here sells one.";
		}
		if(pc.eventTrigger[Event.palace1Clear] && pc.eventTrigger[Event.gotTorch]){
			ww.txt = "North of the last PALACE is a desert. The SPACE DOOR is hidden under a cactus there.";
		}
		if(pc.eventTrigger[Event.palace2Clear]){
			ww.txt = "Travel east, to where the grass grows tall. There you'll find another PALACE, with the 3rd SPACE DOOR.";
		}
		if(pc.eventTrigger[Event.palace3Clear]){
			ww.txt = "To the west is the red forest. It holds the next PALACE, and the 4th SPACE DOOR.";
		}
		if(pc.eventTrigger[Event.palace4Clear]){
			ww.txt = "Far to the south-west is a land cursed with unnatural cold. Perhaps helping its residents will yeild the next egg.";
		}
		if(pc.eventTrigger[Event.palace5Clear]){
			ww.txt = "Use your ICE STONE at the south beach to reach new places and you'll find the next SPACE DOOR.";
		}
		if(pc.eventTrigger[Event.palace6Clear]){
			ww.txt = "The graveyard to the noth-west calls. You'll need to use you WAND at the right place.";
		}
		if(pc.eventTrigger[Event.palace7Clear]){
			ww.txt = "It's time to go to the mountians in the north. Leave no stone unturned.";
		}
		if(pc.eventTrigger[Event.palace8Clear]){
			ww.txt = "The deep forest in the east, near where you found the STAR. Be brave, something terrible is there.";
		}
		if(pc.eventTrigger[Event.palace9Clear]){
			ww.txt = "In the north mountians, where the rock melts and fire flows like water. Can you feel the eggs start to pulse?";
		}
		if(pc.eventTrigger[Event.palace10Clear]){
			ww.txt = "There is a cursed land in the north-east, blighted by darkness. The shore there holds a secret.";
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
	
	
	if(xxx == 17 && yyy == 8){ // jungle cat house
		ww.bmap[7, 5] = imgNPCCat;
		ww.txt = "You're out here looking for the STAR? Well I hope you know better than to try to fight every monster you see.\n\nYou can just run past them and still be a hero, you know.";
		if(pc.eventTrigger[Event.gotStar]){
			ww.txt = "King Lion will reward those who help him defend the relm.";
		}
	}
	
	
	
	//advice mallards
	if(xxx == 8 && yyy == 8){
		ww.bmap[7, 6] = imgNPCDuck;
		ww.fmap[6, 6] = imgWater; ww.fmap[7, 6] = imgWater; ww.fmap[8, 6] = imgWater;
		ww.fmap[6, 7] = imgWater; ww.fmap[7, 7] = imgWater; ww.fmap[8, 7] = imgWater;
		ww.fmap[6, 8] = imgWater; ww.fmap[7, 8] = imgWater; ww.fmap[8, 8] = imgWater;
		ww.txt = "The Purple Crab Monsters shoot while you're shooting.\n\nTry just tapping the shoot button while fighting them.";
	}
	if(xxx == 11 && yyy == 7){
		ww.bmap[7, 6] = imgNPCDuck;
		ww.fmap[6, 6] = imgWater; ww.fmap[7, 6] = imgWater; ww.fmap[8, 6] = imgWater;
		ww.fmap[6, 7] = imgWater; ww.fmap[7, 7] = imgWater; ww.fmap[8, 7] = imgWater;
		ww.fmap[6, 8] = imgWater; ww.fmap[7, 8] = imgWater; ww.fmap[8, 8] = imgWater;
		ww.txt = "Use numbers or mouse wheel to swap items.\n\nPress [Enter] to look at your inventory.\n\nPress [Q] to use a potion.\n\nItem managment is key to success!";
	}
	if(xxx == 15 && yyy == 5){
		ww.bmap[7, 6] = imgNPCDuck;
		ww.fmap[6, 6] = imgWater; ww.fmap[7, 6] = imgWater; ww.fmap[8, 6] = imgWater;
		ww.fmap[6, 7] = imgWater; ww.fmap[7, 7] = imgWater; ww.fmap[8, 7] = imgWater;
		ww.fmap[6, 8] = imgWater; ww.fmap[7, 8] = imgWater; ww.fmap[8, 8] = imgWater;
		ww.txt = "Your eye lazers are powerful, but don't neglect you secondary weapons.\n\nMost of them do extra damage to particular monster types.";
	}
	
	
	
	
	if( (xxx == 9 && yyy == 7)
		|| (xxx == 6 && yyy == 4)
			){ // lizard shop
		ww.bmap[6, 5] = imgNPCLizard;
		ww.bmap[7, 5] = imgBlank; ww.bmap[8, 5] = imgBlank;
		ww.txt = "In dangerous times like these, Lizard Brothers Retail is the only store you can trust.";
		ww.bmap[3, 6] = noone; ww.bmap[11, 6] = noone;
		worldPopulateShop(2);
		worldPopulateShop(5);
		worldPopulateShop(9);
		worldPopulateShop(12);
		
	}
	
	
	
	
	if( (xxx == 7 && yyy == 4) 
		|| (xxx == 10 && yyy == 8) 
		|| (xxx == 5 && yyy == 3) 
		|| (xxx == 6 && yyy == 3) 
		){ // dog gifts
		ww.bmap[7, 5] = imgNPCDog;
		if(ww.caveCoins[pc.xMap, pc.yMap] > 0){
			ww.txt = "I hope these coins help you on your quest.";
		}
	}
	
	
	worldGetRoomCaveCarrot(xxx, yyy, 5, 2, Event.gotCarrot02);
	worldGetRoomCaveCarrot(xxx, yyy, 12, 8, Event.gotCarrot04);
	worldGetRoomCaveCarrot(xxx, yyy, 12, 7, Event.gotCarrot05);
	
	
	if( (xxx == 7 && yyy == 3) ){ // rang cat
		ww.bmap[7, 5] = imgNPCCat;
		if(pc.eventTrigger[Event.gotRangPack]){
			ww.txt = "King Lion's castle is north of the graveyard.";
		} else {
			ww.txt = "You really only have one boomarang?\n\nI guess you should take some of mine.";
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupRangPack);
		}
	}
	
	
	
	if( xxx == 8 && yyy = 5 ){ //bee shop
		ww.bmap[2, 5] = imgNPCBee; ww.bmap[3, 5] = imgNPCBee; ww.bmap[5, 5] = imgNPCBee; ww.bmap[7, 5] = imgNPCBee; ww.bmap[8, 5] = imgNPCBee; ww.bmap[10, 5] = imgNPCBee; ww.bmap[11, 5] = imgNPCBee; ww.bmap[13, 5] = imgNPCBee;
		ww.bmap[1, 6] = imgNPCBee; ww.bmap[2, 6] = imgNPCBee; ww.bmap[5, 6] = imgNPCBee; ww.bmap[6, 6] = imgNPCBee; ww.bmap[7, 6] = imgNPCBee; ww.bmap[8, 6] = imgNPCBee; ww.bmap[12, 6] = imgNPCBee; ww.bmap[13, 6] = imgNPCBee;
		ww.bmap[1, 7] = imgNPCBee; ww.bmap[3, 7] = imgNPCBee; ww.bmap[13, 7] = imgNPCBee;
		if(!pc.eventTrigger[Event.gotHoneycomb]){
			ww.txt = "Carry this into space, and we will fight by your side.";
			var s = instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupHoneycomb);
			s.coinPrice = 155;
			s.desc = "";
		}
	}
	
	
	
	
	
	ww.mapRow = 0;
	if(	(xxx == 8 && yyy == 6)
		|| (xxx == 7 && yyy == 1)
		|| (xxx == 15 && yyy == 4)
		|| (xxx == 4 && yyy == 7)
		|| (xxx == 0 && yyy == 9)
		|| (xxx == 18 && yyy == 9)
		|| (xxx == 0 && yyy == 5)
		|| (xxx == 10 && yyy == 0)
		|| (xxx == 16 && yyy == 4)
		|| (xxx == 4 && yyy == 0)
		|| (xxx == 18 && yyy == 1)
				){ 
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
		
		if( (xxx == 8 && yyy == 6 && pc.eventTrigger[Event.palace1Clear])
			|| (xxx == 7 && yyy == 1 && pc.eventTrigger[Event.palace2Clear])
			|| (xxx == 15 && yyy == 4 && pc.eventTrigger[Event.palace3Clear])
			|| (xxx == 4 && yyy == 7 && pc.eventTrigger[Event.palace4Clear])
			|| (xxx == 0 && yyy == 9 && pc.eventTrigger[Event.palace5Clear])
			|| (xxx == 18 && yyy == 9 && pc.eventTrigger[Event.palace6Clear])
			|| (xxx == 0 && yyy == 5 && pc.eventTrigger[Event.palace7Clear])
			|| (xxx == 10 && yyy == 0 && pc.eventTrigger[Event.palace8Clear])
			|| (xxx == 16 && yyy == 4 && pc.eventTrigger[Event.palace9Clear])
			|| (xxx == 4 && yyy == 0 && pc.eventTrigger[Event.palace10Clear])
			|| (xxx == 18 && yyy == 1 && pc.eventTrigger[Event.palace11Clear])
		
		){
			ww.fmap[5, 4] = imgGrassFlowers; ww.fmap[6, 4] = imgGrassFlowers; ww.fmap[7, 4] = imgGrassFlowers; ww.fmap[8, 4] = imgGrassFlowers;
			ww.fmap[5, 5] = imgGrassFlowers; ww.fmap[6, 5] = imgGrassFlowers; ww.fmap[8, 5] = imgGrassFlowers; ww.fmap[9, 5] = imgGrassFlowers;
			ww.fmap[6, 6] = imgGrassFlowers; ww.fmap[7, 6] = imgGrassFlowers; ww.fmap[8, 6] = imgGrassFlowers;
			ww.fmap[6, 7] = imgGrassFlowers; ww.fmap[7, 7] = imgGrassFlowers;
		}
	}
	
	

	
	repeat(ww.caveCoins[pc.xMap, pc.yMap]){
		instance_create_depth(irandom_range(150, ww.roomWidth - 150), irandom_range(480, 500), ww.layerP, objPupCoin);
	}
	
	
}