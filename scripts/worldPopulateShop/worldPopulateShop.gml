function worldPopulateShop(a){ // 2, 5, 9, 12
	
	//var t = objPupBomb;
	//var p = 20;
	//var desc = "Gain 4 BOMBS that can open secret doors and deal a lot of damage.\n\nBuyer beware, you can't carry very many at a time.";
	
	
	var t = choose(objPupShotUpBurst, objPupShotUpRapid, objPupShotUpWide);
	var p = 10;
	var desc = "ShotUPs make your Lazer Eyes more powerful until you take damage.";
	var e = noone;
	
	carrotDesc = "Permanently increase your max HP by 5";
	
	
	if(a == 2){
		if(!pc.eventTrigger[Event.gotShopCarrot01]){
			var t = objPupCarrot; var p = 5; e = Event.gotShopCarrot01;
			desc = carrotDesc;
		} else if(!pc.eventTrigger[Event.gotRing1]){
			var t = objPupRing1; var p = 210;
			desc = "Reduce damage taken by 15%";
		} else if(!pc.eventTrigger[Event.gotShopCarrot02]){
			var t = objPupCarrot; var p = 30; e = Event.gotShopCarrot02;
			desc = carrotDesc;
		} else if(!pc.eventTrigger[Event.gotShopCarrot03]){
			var t = objPupCarrot; var p = 60; e = Event.gotShopCarrot03;
			desc = carrotDesc;
		} else if(!pc.eventTrigger[Event.gotShopCarrot04]){
			var t = objPupCarrot; var p = 90; e = Event.gotShopCarrot04;
			desc = carrotDesc;
		} else if(!pc.eventTrigger[Event.gotRing2]){
			var t = objPupRing2; var p = 280;
			desc = "Reduce damage taken by 30%";
		} else if(!pc.eventTrigger[Event.gotShopCarrot05]){
			var t = objPupCarrot; var p = 120; e = Event.gotShopCarrot05;
			desc = carrotDesc;
		} else if(!pc.eventTrigger[Event.gotShopCarrot06]){
			var t = objPupCarrot; var p = 120; e = Event.gotShopCarrot06;
			desc = carrotDesc;
		} else if(!pc.eventTrigger[Event.gotGlasses]){
			var t = objPupGlasses; var p = 440;
			desc = "See all secret doors";
		}
		
		
	}
	
	if(a == 5){
		
		if(pc.bombs < bombsMax()){
			var t = objPupBomb; var p = 20;
			var desc = "Gain 4 BOMBS that can open secret doors and deal a lot of damage.\n\nBuyer beware, you can only carry " + string(bombsMax()) + ".";
		} else if(!pc.eventTrigger[Event.gotStars]){
			t = objPupStars; p = 110;
			desc = "Low damage, high speed weapon with a wide range.";
		} else if(!pc.eventTrigger[Event.gotPoisonVial]){
			t = objPupPoisonVial; p = 125;
			desc = "Throwing stars now poison foes.";
		} else if(!pc.eventTrigger[Event.gotPowderHorn]){
			t = objPupPowderHorn; p = 195;
			desc = "Bombs have bigger explosions.";
		} else if(!pc.eventTrigger[Event.gotWax]){
			t = objPupWax; p = 405;
			desc = "Blue space gas won't slow you down.";
		}
		
	}
	
	if(a == 9){
		if(pc.wepLevels[2] == 0){
			t = objPupTorch; p = 60;
			desc = "Use FIRE to open secret doors and burn enemies."
		} else if (!pc.eventTrigger[Event.gotOil]) {
			t = objPupOil; p = 190;
			desc = "Torch is more powerful.";
		} else if (!pc.eventTrigger[Event.gotCrowbar]) {
			t = objPupCrowbar; p = 25;
			desc = "Pushing blocks hurts monsters.";
		}
	}
	
	if(a == 12){
		if(!pc.eventTrigger[Event.gotShield]){
			t = objPupShield; p = 90;
			desc = "Absorb one lesser enemy bullet every 30 seconds."
		} else if(!pc.eventTrigger[Event.gotOrbit]) {
			t = objPupOrbit; p = 120;
			desc = "Smash nearby monsters all around you."
		} else if (pc.potion == noone){
			t = choose(objPupPotionFire, objPupPotionPoison, objPupPotionStun); p = 40;
			desc = "Press Q to attack all monsters on the screen once."
		}
	}
	
	
	if(pc.eventTrigger[Event.gotDiscountCard]){
		p = ceil(p * .85);
	}
	
	
	
	var s = instance_create_depth(a * 64 + 32, 6 * 64 + 32, ww.layerP, t);
	s.coinPrice = p;
	s.desc = desc;
	s.rangPickup = false;
	s.windPull = false;
	s.magPull = false;
	if(e != noone){ s.eventNumber = e; }
	worldPutRug(a-1, 6);
	
	

}