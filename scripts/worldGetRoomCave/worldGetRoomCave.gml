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
		var p = lowestPalaceCleared();
		ww.bmap[7, 5] = imgNPCTurtle;
		if(lowestPalaceCleared() == 0 && !pc.eventTrigger[Event.gotStar]) {
		ww.txt = "The Dragons are attacking from SPACE, I can't believe it! \n\nOwl lives at the beach to the south, he will know what to do.";
		} else if(p == 0 && pc.eventTrigger[Event.gotStar]){
			ww.txt = "You got the STAR!\n\nTake it to the PALACE just west of here.";
		} else if(p == 1 && !pc.eventTrigger[Event.gotTorch]){
			ww.txt = "You'll need a torch to find the next SPACE DOOR. The Lizard Brother's store near here sells one.";
		} else if(p == 1 && pc.eventTrigger[Event.gotTorch]){
			ww.txt = "North of the last PALACE is a desert. The SPACE DOOR is hidden under a cactus there.";
		} else if(p == 2 ){
			ww.txt = "Travel east, to where the grass grows tall. There you'll find another PALACE, with the 3rd SPACE DOOR.";
		} else if(p == 3 ){
			ww.txt = "To the west is the red forest. It holds the next PALACE, and the 4th SPACE DOOR.";
		} else if(p == 4 ){
			ww.txt = "Far to the south-west is a land cursed with unnatural cold. Perhaps helping its residents will yeild the next egg.";
		} else if(p == 5 ){
			ww.txt = "Use your ICE STONE at the south beach to reach new places and you'll find the next SPACE DOOR.";
		} else if(p == 6 ){
			ww.txt = "The graveyard to the noth-west calls. You'll need to use you WAND at the right place.";
		} else if(p == 7 ){
			ww.txt = "It's time to go to the mountains in the north.\n\nThe palace is in plain sight, but leave no stone unturned if you want the best equipment.";
		} else if(p == 8 ){
			ww.txt = "The deep forest in the east, near where you found the STAR. Be brave, the monsters there are something terrible.";
		} else if(p == 9 ){
			ww.txt = "In the north mountains, where the rock melts and fire flows like water. Can you feel the eggs start to pulse?";
		} else if(p == 10 ){
			ww.txt = "There is a cursed land in the north-east, blighted by darkness. The shore there holds a secret.";
		} else if (p == 11 && !pc.eventTrigger[Event.gotBird]) {
			ww.txt = "It's time to hatch the eggs.\n\nOnly with the power of the Cosmic Bluebird can you hope you challenge the Dragon Queen.";
		} else if (p == 11 && pc.eventTrigger[Event.gotBird]) {
			ww.txt = "The Cosmic Bluebird, I can't believe it!\n\nIt's time.\n\nThe Dragon Queen hovers above the ocean. Fly out from the Eastern dock.";
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
			ww.txt = "King Lion will reward those who help him defend the realm.";
		}
	}
	
	if(xxx == 5 && yyy == 6){ // red forest cat house
		ww.bmap[7, 5] = imgNPCCat;
		ww.txt = "So the joke with the philosopher's stone is, instead of lead into gold, the stone turns gold into lead.\n\nAnd lead is an old slang word for bullets... Seems dumb.";
		if(!pc.eventTrigger[Event.gotCauldren1]){
			ww.txt = "The witch in this forest has something to make your potions stronger, but you'll have to take it.";
		} else if(!pc.eventTrigger[Event.gotPhiloStone]) {
			if(pc.eventTrigger[Event.gotWand]){
				ww.txt = "Your wand could wake up the sleeping dragon, you know, if you feel like dying today.";
			} else {
				ww.txt = "The dragon sleeping in the forest won't wake up without some kind of magic, which is probably for the best.";
			}
		}
	}
	
	
	
	//advice mallards
	if(xxx == 8 && yyy == 8){
		worldGetCaveDuck();
		ww.txt = "The Purple Crab Monsters shoot while you're shooting.\n\nTry just tapping the shoot button while fighting them.";
	}
	if(xxx == 5 && yyy == 4){
		worldGetCaveDuck();
		ww.txt = "Have you noticed some monsters drop a CARROT when beaten? Don't expect more when fighting them again.\n\nOf course, that does mean you'll need to fight new monsters when you discover them if you want all the carrots.";
	}
	if(xxx == 11 && yyy == 7){
		worldGetCaveDuck();
		ww.txt = "Since the dragon attacks started, many animals went into hiding.\n\nTo find them you'll have to burn plants, bomb rocks, and try all kinds of things.";
	}
	if(xxx == 15 && yyy == 5){
		worldGetCaveDuck();
		ww.txt = "Your eye lazers are powerful, but don't forget your other weapons.\n\nMost of them do extra damage to particular monster types like boomerangs to bats or fire to those green potato looking trolls.";
	}
	if(xxx == 11 && yyy == 5){
		worldGetCaveDuck();
		ww.txt = "Bombs are very powerful, but expensive to keep buying. Thankfully, there's a trick:\n\nIf you beat 8 monsters who can drop bombs without getting hit, the bomb drop is guaranteed!";
	}
	if(xxx == 10 && yyy == 4){
		worldGetCaveDuck();
		ww.txt = "Don't worry too much when pushing the sliding blocks around.\n\nIt may look like you can trap yourself, but that's actually impossible.";
	}
	if(xxx == 2 && yyy == 3){
		worldGetCaveDuck();
		ww.txt = "Pushing on gravestones is dangerous, but may prove worth it if you search carefully.";
	}
	if(xxx == 8 && yyy == 2){
		worldGetCaveDuck();
		ww.txt = "UP, UP, UP, UP, UP. It's the only way to reach the top of the mountain.";
	}
	if(xxx == 11 && yyy == 1){
		worldGetCaveDuck();
		ww.txt = "EAST, EAST, EAST, EAST, EAST. Down deep in the dark, seek out the blind builders.";
	}
	if(xxx == 14 && yyy == 1){
		ww.bmap[7, 6] = imgNPCMouse;
		ww.txt = "The SPACE DOOR on the beach holds an incredible secret. Don't kill the pencil monster and something will happen.\n\nDon't tell them I told you.";
	}
	if(xxx == 9 && yyy == 2){
		worldGetCaveDuck();
		ww.txt = "In the old forest, seek out Frog.\n\nHe was a great warrior in his youth, and trains for a price.\n\nSeek his advice often enough, he may grant you a boon.";
		if(pc.eventTrigger[Event.gotFrog]){
			ww.txt = "I see you've found Frog.\n\nTake his advice to heart.";
		}
	}
	if(xxx == 6 && yyy == 5){
		worldGetCaveDuck();
		ww.txt = "When you're lost in the deep dark caves, go South. Go South and South some more.\n\nIt's not the way out but you'll find a snack, as long as you don't mind worms.";
	}
	if(xxx == 1 && yyy == 1){
		worldGetCaveDuck();
		ww.bmap[7, 6] = noone;
		ww.bmap[7, 7] = imgNPCShark;
		ww.txt = "My Dad is the most powerful fighter in the whole ocean.";
		if(!pc.eventTrigger[Event.gotWhistle] && pc.eventTrigger[Event.gotBird]){ ///
			ww.txt = "My Dad is the most powerful fighter in the whole ocean.\n\nThis whistle will call him, but don't use it until the final battle.";
			var e = instance_create_depth( (ww.roomWidth / 4) * 3, 500, ww.layerP, objPupWhistle);
			e.coinPrice = 460;
		}
	}
	if(xxx == 5 && yyy == 1){
		ww.bmap[7, 6] = imgNPCMantis;
		ww.txt = "My claws are sharp, but not as sharp as King Lion's.";
		if(!pc.eventTrigger[Event.gotWhetstone] && pc.eventTrigger[Event.gotSword]){
			ww.txt = "Even your fake claw should be sharp.";
			var e = instance_create_depth( (ww.roomWidth / 2), 500, ww.layerP, objPupWhetstone);
			e.coinPrice = 360;
		}
	}
	if(xxx == 6 && yyy == 1){
		worldGetCaveDuck();
		ww.txt = "There's actually 6 places where using the WAND will drain the liquids and reveal some stairs.\n\nIt'd be a good idea to find them all.";
	}
	if(xxx == 16 && yyy == 2){
		worldGetCaveDuck();
		ww.txt = "The WAND can do a lot of weird things.\n\nOne use you might not find on your own is that it can be used to exit space:\n\nJust hold down the button for a few seconds.";
	}
	
	if(xxx == 11 && yyy == 4){
		ww.bmap[7, 6] = imgNPCWorms;
		if(!pc.eventTrigger[Event.gotSleeperCarrot]){
			var p = instance_create_depth(11 * 64, 9 * 64, ww.layerP, objPupTripCarrot);
			p.eventNumber = Event.gotSleeperCarrot;
		}
	}
	
	
	///lake treasures
	if(xxx == 6 && yyy == 2){
		ww.bmap[7, 6] = imgNPCFox;
		if(!pc.eventTrigger[Event.gotBombBag]){
			ww.txt = "I bet you'd like to have more bombs.";
			var s = instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupBombBag);
		}
	}
	if(xxx == 11 && yyy == 6){
		ww.bmap[7, 6] = imgNPCFox;
		if(!pc.eventTrigger[Event.gotCoinBag]){
			ww.txt = "I bet you'd like to hold more coins.";
			var s = instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupCoinBag);
		}
	}
	if(xxx == 18 && yyy == 4){
		ww.bmap[7, 6] = imgNPCFox;
		if(!pc.eventTrigger[Event.gotStrangePaw]){
			ww.txt = "I bet you'd like to have more MP.";
			var s = instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupStrangePaw);
		}
	}
	
	
	//snow story
	if(xxx == 2 && yyy == 6){
		ww.bmap[7, 6] = imgNPCDuck;
		ww.fmap[6, 6] = imgWater; ww.fmap[7, 6] = imgWater; ww.fmap[8, 6] = imgWater;
		ww.fmap[6, 7] = imgWater; ww.fmap[7, 7] = imgWater; ww.fmap[8, 7] = imgWater;
		ww.fmap[6, 8] = imgWater; ww.fmap[7, 8] = imgWater; ww.fmap[8, 8] = imgWater;
		ww.txt = "This area used to be a warm green valley.\n\nThe dragons have done something to curse us with endless snow.";
		if(pc.eventTrigger[Event.gotIceStone]){
			ww.txt = "I can't believe it, you saved us! Thanks so much!";
			if(!pc.eventTrigger[Event.gotCarrot07]){
				var s = instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupCarrot);
				s.eventNumber = Event.gotCarrot07;
			}
			
			
		}
	}
	if(xxx == 0 && yyy == 6){
		ww.bmap[7, 6] = imgNPCFox;
		ww.txt = "The Ice Dragon here keeps a magic stone that it uses to freeze our lands.\n\nI'm so cold!";
		if(pc.eventTrigger[Event.gotIceStone]){
			ww.txt = "Hey, you got the stone!\n\nYou could reach King Lion's palace to the north with that!";
		}
	}
	if(xxx == 2 && yyy == 8){
		ww.bmap[7, 6] = imgNPCSmallLizard;
		ww.txt = "To ... cold ... to ... talk ...";
		if(pc.eventTrigger[Event.gotIceStone]){
			ww.txt = "It is finally warm!\n\nI'll ask my big brothers to give you a discount from now on.";
			if(!pc.eventTrigger[Event.gotDiscountCard]){
				instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupDiscountCard);
			}
		}
	}
	
	if(xxx == 18 && yyy == 2){
		ww.bmap[6, 5] = imgNPCLizardDad;
		ww.bmap[7, 5] = imgBlank; ww.bmap[8, 5] = imgBlank;
		if(pc.eventTrigger[Event.gotRing3]){
			ww.txt = "In dangerous times like these, Lizard Brothers Retail is the only store you can trust.";
		} else if (pc.eventTrigger[Event.gotRing2]){
			ww.txt = "There's no finer armor in the world.";
			var e = instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupRing3);
			e.desc = "Reduce damage taken by 45%";
			e.coinPrice = 650;
		} else {
			ww.txt = "You prove yourself a good enough customer to my sons, and I'll sell you something great.";
		}
	}
	
	
	
	if( (xxx == 9 && yyy == 7)
		|| (xxx == 6 && yyy == 4)
		|| (xxx == 13 && yyy == 5)
		|| (xxx == 5 && yyy == 9)
		|| (xxx == 3 && yyy == 3)
		|| (xxx == 18 && yyy == 8)
		|| (xxx == 12 && yyy == 2)
			){ // lizard shop
		ww.inShop = true;		
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
		|| (xxx == 13 && yyy == 7) 
		|| (xxx == 6 && yyy == 7) 
		|| (xxx == 1 && yyy == 2) 
		|| (xxx == 1 && yyy == 3) 
		|| (xxx == 15 && yyy == 3) 
		|| (xxx == 17 && yyy == 3) 
		|| (xxx == 15 && yyy == 7) 
		|| (xxx == 16 && yyy == 8) 
		|| (xxx == 8 && yyy == 0) 
		|| (xxx == 9 && yyy == 6) 
		|| (xxx == 9 && yyy == 3) 
		|| (xxx == 10 && yyy == 2) 
		|| (xxx == 8 && yyy == 1) 
		|| (xxx == 14 && yyy == 2) 
		|| (xxx == 17 && yyy == 9) 
		|| (xxx == 12 && yyy == 6) 
		|| (xxx == 4 && yyy == 8) 
		){ // dog gifts
		ww.bmap[7, 5] = imgNPCDog;
		if(ww.caveCoins[pc.xMap, pc.yMap] > 0){
			ww.txt = "I hope these coins help you on your quest.";
		}
	}
	
	
	worldGetRoomCaveCarrot(xxx, yyy, 5, 2, Event.gotCarrot02);
	worldGetRoomCaveCarrot(xxx, yyy, 12, 8, Event.gotCarrot04);
	worldGetRoomCaveCarrot(xxx, yyy, 12, 7, Event.gotCarrot05);
	worldGetRoomCaveCarrot(xxx, yyy, 16, 6, Event.gotCarrot08);
	worldGetRoomCaveCarrot(xxx, yyy, 13, 4, Event.gotCarrot09);
	worldGetRoomCaveCarrot(xxx, yyy, 7, 8, Event.gotCarrot10);
	worldGetRoomCaveCarrot(xxx, yyy, 5, 8, Event.gotCarrot11);
	worldGetRoomCaveCarrot(xxx, yyy, 4, 4, Event.gotCarrot12);
	worldGetRoomCaveCarrot(xxx, yyy, 0, 4, Event.gotCarrot13);
	worldGetRoomCaveCarrot(xxx, yyy, 2, 1, Event.gotCarrot14);
	worldGetRoomCaveCarrot(xxx, yyy, 7, 6, Event.gotCarrot15);
	worldGetRoomCaveCarrot(xxx, yyy, 12, 1, Event.gotCarrot17);
	worldGetRoomCaveCarrot(xxx, yyy, 16, 3, Event.gotCarrot18);
	worldGetRoomCaveCarrot(xxx, yyy, 12, 9, Event.gotCarrot19);
	worldGetRoomCaveCarrot(xxx, yyy, 14, 9, Event.gotCarrot20);
	worldGetRoomCaveCarrot(xxx, yyy, 15, 9, Event.gotCarrot21);
	worldGetRoomCaveCarrot(xxx, yyy, 2, 2, Event.gotCarrot22);
	worldGetRoomCaveCarrot(xxx, yyy, 0, 3, Event.gotCarrot23);
	worldGetRoomCaveCarrot(xxx, yyy, 7, 5, Event.gotCarrot24);
	worldGetRoomCaveCarrot(xxx, yyy, 4, 1, Event.gotCarrot25);
	worldGetRoomCaveCarrot(xxx, yyy, 3, 6, Event.gotCarrot26);
	worldGetRoomCaveCarrot(xxx, yyy, 18, 6, Event.gotCarrot27);
	worldGetRoomCaveCarrot(xxx, yyy, 1, 8, Event.gotCarrot28);
	worldGetRoomCaveCarrot(xxx, yyy, 7, 0, Event.gotCarrot29);
	worldGetRoomCaveCarrot(xxx, yyy, 9, 5, Event.gotCarrot30);
	worldGetRoomCaveCarrot(xxx, yyy, 8, 4, Event.gotCarrot31);
	worldGetRoomCaveCarrot(xxx, yyy, 14, 4, Event.gotCarrot33);
	
	
	
	
	if(xxx == 14 && yyy == 7){
		ww.bmap[7, 6] = imgNPCChicken;
		if(!pc.eventTrigger[Event.gotFarShot]){
			ww.txt = "Keep your distance whenever you can, it'll pay off.";
			var s = instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupScope);
		}
	}
	
	if(xxx == 13 && yyy == 6){
		ww.bmap[7, 6] = imgNPCChicken;
		if(!pc.eventTrigger[Event.gotDoll]){
			ww.txt = "Leave this doll when you warp, some of the monsters might be dumb enough to shoot at it.";
			var s = instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupDoll);
		}
	}
	
	
	
	if( (xxx == 6 && yyy == 6) ){ // chair sloth
		ww.bmap[7, 5] = imgNPCSloth;
		if(pc.eventTrigger[Event.gotChair]){
			ww.txt = "It's important to rest from time to time.";
		} else {
			ww.txt = "When your MP is low, stand still for a moment to sit down.";
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupChair);
		}
	}
	
	
	if( (xxx == 7 && yyy == 3) ){ // rang cat
		ww.bmap[7, 5] = imgNPCCat;
		if(pc.eventTrigger[Event.gotRangPack]){
			ww.txt = "King Lion's castle is north of the graveyard.";
		} else {
			ww.txt = "You really only have one boomarang?\n\nI guess you should take some of mine.";
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupRangPack);
		}
	}
	
	
	if( (xxx == 1 && yyy == 0) ){ // cross mouse
		ww.bmap[7, 5] = imgNPCMouse2;
		if(pc.eventTrigger[Event.gotCross]){
			ww.txt = "We're all counting on you.";
		} else {
			ww.txt = "Please take this. It will protect you from skeletons.";
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupCross);
		}
	}
	
	if( (xxx == 14 && yyy == 8) ){ // pig beads
		ww.bmap[7, 5] = imgNPCPig;
		if(!pc.eventTrigger[Event.gotBlueBead]){
			ww.txt = "Have you been figuring out which weapons the monsters are weak to? If so, this is going to keep your MP full.";
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupBlueBead);
		}
	}
	if( (xxx == 4 && yyy == 9) ){ // pig beads
		ww.bmap[7, 5] = imgNPCPig;
		if(!pc.eventTrigger[Event.gotGreenFlake]){
			ww.txt = "Have you been figuring out which weapons the monsters are weak to? If so, this is going to keep your health full.";
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupGreenFlake);
		}
	}
	if( (xxx == 3 && yyy == 1) ){ // porky bangle
		ww.bmap[7, 5] = imgNPCPorkey;
		if(!pc.eventTrigger[Event.gotSpikeBangle]){
			ww.txt = "If you're getting bumped a lot, this could help.";
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupSpikeBangle);
		}
	}
	
	if( (xxx == 18 && yyy == 3) ){ // tactics animal
		ww.bmap[7, 5] = imgNPCFrog;
		if(!pc.eventTrigger[Event.gotFrog] && pc.frogBuys >= 5){
			ww.txt = "I wager you've learned enough by now you can help pass it on to 3 or 4 hundred thousand of my children.";
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupFrog);
		} else {
			ww.txt = "I can always provide combat advice, for a few coins..\n\nI'll give different tip depending on your progress.";
			var e = instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupPaperTac);
			e.coinPrice = 10;
		}
		
	}
	if( (xxx == 9 && yyy == 4) ){ // lucky coin
		ww.bmap[7, 5] = imgNPCDog2;
		if(!pc.eventTrigger[Event.gotLuckyCoin]){
			ww.txt = "How do dogs have so many coins? I'll let you in on the secret..";
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupLuckyCoin);
		}
	}
	
	
	if( (xxx == 3 && yyy == 7) ){ // work pass
		ww.bmap[7, 5] = imgNPCDog2;
		ww.txt = "Looking to make some extra coins?\nIn the wastes just north of here, there's a place where you can work in the Mines. Likewise you can surf in the forest, and climb the big tree in the jungle.";
		if(!pc.eventTrigger[Event.gotWorkPass]){
			ww.txt += "\n\nShow this pass to get in for half price!";
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupWorkPass);
		}
	}
	
	if( (xxx == 11 && yyy == 8) ){ // shoe
		ww.bmap[7, 5] = imgNPCChicken;
		if(!pc.eventTrigger[Event.gotShoe]){
			ww.txt = "Be careful out there. Don't let the monsters catch you.";
			instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupShoe);
		}
	}
	
	
	
	if( xxx == 8 && yyy = 5 ){ //bee shop
		ww.bmap[2, 5] = imgNPCBee; ww.bmap[3, 5] = imgNPCBee; ww.bmap[5, 5] = imgNPCBee; ww.bmap[7, 5] = imgNPCBee; ww.bmap[8, 5] = imgNPCBee; ww.bmap[10, 5] = imgNPCBee; ww.bmap[11, 5] = imgNPCBee; ww.bmap[13, 5] = imgNPCBee;
		ww.bmap[1, 6] = imgNPCBee; ww.bmap[2, 6] = imgNPCBee; ww.bmap[5, 6] = imgNPCBee; ww.bmap[6, 6] = imgNPCBee; ww.bmap[7, 6] = imgNPCBee; ww.bmap[8, 6] = imgNPCBee; ww.bmap[12, 6] = imgNPCBee; ww.bmap[13, 6] = imgNPCBee;
		ww.bmap[1, 7] = imgNPCBee; ww.bmap[3, 7] = imgNPCBee; ww.bmap[13, 7] = imgNPCBee;
		if(!pc.eventTrigger[Event.gotHoneycomb]){
			ww.txt = "Carry this into space, and we will fight by your side.";
			var s = instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupHoneycomb);
			s.coinPrice = 155; s.desc = "";
		}
	}
	
	if( xxx == 7 && yyy = 7 ){ //horse shop
		ww.bmap[7, 5] = imgHorse; ww.bmap[6, 5] = imgNPCHorseTiny; ww.bmap[8, 5] = imgNPCHorseTiny;
		if(!pc.eventTrigger[Event.gotRubberBand]){
			ww.txt = "You can't always avoid a hit, which is why snapping back into place after is so important.";
			var s = instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupRubberBand);
			s.coinPrice = 55;
			s.desc = "";
		}
	}
	
	if( xxx == 14 && yyy = 6 ){ //rang shop
		ww.bmap[7, 5] = imgNPCCat;
		if(!pc.eventTrigger[Event.gotRang2]){
			ww.txt = "Still using wooden boomerangs? Kind of silly not to upgrade if you can afford it.";
			var s = instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupRang2);
			s.coinPrice = 30;
			s.desc = "";
		} else if(pc.hpMax < 150) {
			ww.txt = "Come back once you get stronger and I'll sell you something even better.";
		} else if (!pc.eventTrigger[Event.gotRang3]) {
			ww.txt = "The Side-Striker 3000 is an unparalleled design. Only something impossible like a magical boomerang taken from a dragon could possibly be better.";
			var s = instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupRang3);
			s.coinPrice = 110;
			s.desc = "";
		} else if (pc.eventTrigger[Event.gotRang4]) {
			ww.txt = "Now way, how did you get a boomerang like THAT??";
		}
		
	}
	
	///potion select
	if(xxx == 18 && yyy == 5){
		ww.bmap[7, 5] = imgNPCSquirrel;
		ww.txt = "Take any one you want.";
		var s = instance_create_depth(3 * 64 + 32, 8 * 64 , ww.layerP, objPupPotionFire);
		var s = instance_create_depth(7 * 64 + 32, 8 * 64 , ww.layerP, objPupPotionStun);
		var s = instance_create_depth(11 * 64 + 32, 8 * 64 , ww.layerP, objPupPotionPoison);
	}
	
	///free bombs
	if(xxx == 6 && yyy == 0){
		ww.bmap[7, 5] = imgNPCSquirrel;
		ww.txt = "Come back anytime.";
		var s = instance_create_depth(6 * 64 + 32 + 16, 8 * 64 , ww.layerP, objPupBomb);
		var s = instance_create_depth(7 * 64 + 32, 8 * 64 , ww.layerP, objPupBomb);
		var s = instance_create_depth(8 * 64 + 32 - 16, 8 * 64 , ww.layerP, objPupBomb);
	}
	
	///free glasses
	if(xxx == 3 && yyy == 0){
		ww.bmap[7, 5] = imgNPCSquirrel;
		ww.txt = "Remember, if things seem too hard you're probably just missing an important hidden treasure.\n\nLook around all over!";
		if(!pc.eventTrigger[Event.gotGlasses]){
			ww.txt = "Want to know how come I can always find where I buried my snacks?";
			var s = instance_create_depth(7 * 64 + 32, 8 * 64, ww.layerP, objPupGlasses);
		}
		
	}
	
	///healing mouse
	if( (xxx == 7 && yyy = 2) ||
		(xxx == 15 && yyy = 2) ||
		(xxx == 0 && yyy = 8) ||
		(xxx == 0 && yyy = 2) ||
		(xxx == 9 && yyy = 0) ||
		(xxx == 16 && yyy = 9) ){ 
		ww.bmap[7, 5] = imgNPCMouse;
		ww.txt = "Come by any time you're feeling tired, and I will help.";
		pc.fullHealing = true;
	}
	if(xxx == 9 && yyy == 0){ //quicksand
		ww.fmap[1, 5] = imgSandQuick; ww.fmap[1, 6] = imgSandQuick; ww.fmap[1, 7] = imgSandQuick; ww.fmap[1, 8] = imgSandQuick; ww.fmap[1, 9] = imgSandQuick; ww.fmap[1, 10] = imgSandQuick;
		ww.fmap[2, 5] = imgSandQuick; ww.fmap[2, 6] = imgSandQuick; ww.fmap[2, 7] = imgSandQuick; ww.fmap[2, 8] = imgSandQuick; ww.fmap[2, 9] = imgSandQuick; ww.fmap[2, 10] = imgSandQuick;
		ww.fmap[3, 8] = imgSandQuick; ww.fmap[3, 9] = imgSandQuick; ww.fmap[3, 10] = imgSandQuick;
	}
	
	ww.mapRow = 0;
	if( xxx == 0 && yyy == 0){
		wmap("PPPPPPPPPPPPPPP");
		wmap("PPPPPPPPPPPPPPP");
		wmap("PPPPPPPPPPPPPPP");
		wmap("PPPPPPPPPPPPPPP");
		wmap("PPPPPPPPPPPPPPP");
		wmap("PP...........PP");
		wmap("PP.F.......F.PP");
		wmap("PP...........PP");
		wmap("PP...........PP");
		wmap("PP...........PP");
		wmap("PP...........PP");
		wmap("PPPPPP...PPPPPP");
		ww.bmap[6, 5] = imgLion;
		ww.bmap[7, 5] = imgBlank; ww.bmap[6, 6] = imgBlank; ww.bmap[7, 6] = imgBlank;
		worldPutRug(6, 5)
		/*
		if(playerEggCount() < 6){
			ww.txt = "My place is here; I cannot go galavanting through space while the kingdom burns.\n\nSlay the dragons in my name.";
			ww.txt += "\n\nCome back with six eggs and I will make you my knight.";
		} else if(!pc.eventTrigger[Event.gotCape]){
			ww.txt = "Kneel.\n\nNow Rise; Sir Carl Knight of the realm.\n\nLet your courage fuel our people to victory!";
			instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupCape);
		} else if(playerEggCount() < 10){
			ww.txt = "My place is here; I cannot go galavanting through space while the kingdom burns.\n\nSlay the dragons in my name.";
			ww.txt += "\n\nCome back with ten eggs and I will make you a lord.";
		} else if(!pc.eventTrigger[Event.gotCape2]){
			ww.txt = "With this oil I anoint you, great defender of the meek.\n\nMay your spirit remain as pure as your nobel deeds.";
			instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupCape2);
		} else {
			ww.txt = "Ho loyal paladin, how goes the war?";
		}*/
		
		if(pc.eventTrigger[Event.gotCape2]){
			ww.txt = "Ho loyal paladin, how goes the war?";
		} else if(playerEggCount() >= 10) {
			ww.txt = "With this oil I anoint you, great defender of the meek.\n\nMay your spirit remain as pure as your noble deeds.";
			instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupCape2);
		} else if(pc.eventTrigger[Event.gotCape]) {
			ww.txt = "My place is here; I cannot go galavanting through space while the kingdom burns.\n\nSlay the dragons in my name.";
			ww.txt += "\n\nCome back with ten eggs and I will make you a lord.";
		} else if (playerEggCount() >= 6) {
			ww.txt = "Kneel.\n\nNow Rise; Sir Carl Knight of the realm.\n\nLet your courage fuel our people to victory!";
			instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupCape);
		} else {
			ww.txt = "My place is here; I cannot go galavanting through space while the kingdom burns.\n\nSlay the dragons in my name.";
			ww.txt += "\n\nCome back with six eggs and I will make you my knight.";
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
		wmap("//...........//");
		wmap("/............./");
		wmap("/............./");
		wmap("/............./");
		wmap("/......0....../");
		wmap("/............./");
		wmap("/............./");
		wmap("/............./");
		wmap("/............./");
		wmap("//...........//");
		wmap("//////...//////");
		worldGetCaveSkulls(xxx, yyy);
		ww.inDungeonEntrence = true;
		
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
		} else {
			
		}
	}
	
	

	
	repeat(ww.caveCoins[pc.xMap, pc.yMap]){
		instance_create_depth(irandom_range(150, ww.roomWidth - 150), irandom_range(480, 500), ww.layerP, objPupCoin);
	}
	
	
	
	if(xxx == 10 && yyy == 3){
		worldRowReset();
		wmap("~~~~~~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("/~~~~~~~~~~~~~~");
		wmap("/~~~~~~~~~~~~~/");
		wmap("//~~~~~~~~~~~//");
		wmap("/~~~~~~~~~~~~//");
		wmap("/..~~~~~~~~.../");
		wmap("/............./");
		wmap("/............./");
		wmap("/............./");
		wmap("/............./");
		wmap("//////...//////");
		
		
		var s = instance_create_depth(7 * 64 + 32, 7 * 64 + 32, ww.layerP, objPupSurfboard);
		s.coinPrice = 40; s.desc = "";
		if(pc.eventTrigger[Event.gotWorkPass]){ s.coinPrice = 20; }
	}
	
	
	
	
	if(xxx == 13 && yyy == 8){
		worldRowReset();
		wmap("lllllllllllllll");
		wmap("lll.........lll");
		wmap("lll.........lll");
		wmap("lll+lllllllllll");
		wmap("lll+lllllllllll");
		wmap("lll+lllllllllll");
		wmap("lll+lllllllllll");
		wmap("lll.........lll");
		wmap("lll..F...F..lll");
		wmap("lll.........lll");
		wmap("lll.........lll");
		wmap("llllll...llllll");
		
		
		var s = instance_create_depth(7 * 64 + 32, 2 * 64 + 32, ww.layerP, objPupTramp);
		//var s = instance_create_depth(7 * 64 + 32, 10 * 64 + 32, ww.layerP, objPupTramp);
		s.coinPrice = 40; s.desc = "";
		if(pc.eventTrigger[Event.gotWorkPass]){ s.coinPrice = 20; }
	}
	
	if(xxx == 1 && yyy == 4){
		worldRowReset();
		wmap("////////../////");
		wmap("//.//////./////");
		wmap("//..///////////");
		wmap("///////////////");
		wmap("/..//////..////");
		wmap("//.//.......///");
		wmap("////.......///.");
		wmap("///.........//.");
		wmap("///..........//");
		wmap("////....///////");
		wmap("..///....//////");
		wmap("//////...//////");
		
		
		var s = instance_create_depth(7 * 64 + 32, 7 * 64 + 32, ww.layerP, objPupPick);
		s.coinPrice = 40; s.desc = "";
		if(pc.eventTrigger[Event.gotWorkPass]){ s.coinPrice = 20; }
	}
	
	
	
}