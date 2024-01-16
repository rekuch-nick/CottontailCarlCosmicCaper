function worldPopulateShop(a){ // 2, 5, 9, 12
	
	var t = objPupBomb;
	var p = 20;
	var desc = "Gain 4 BOMBS that can open secret doors and deal a lot of damage.\n\nBuyer beware, you can't carry very many at a time.";
	
	
	
	if(a == 2){
		var t = choose(objPupShotUpBurst, objPupShotUpRapid, objPupShotUpWide);
		var p = 10;
		var desc = "ShotUPs make your Lazer Eyes more powerful until you take damage.";
	}
	
	if(a == 5){
		var t = objPupHPOrb;
		var p = 5;
		var desc = "Recover a small amount of HEALTH.\n\nYou probably have better things to spend your money on.";
		
		if(!pc.eventTrigger[Event.gotStars]){
			t = objPupStars;
			p = 110;
			desc = "Low damage, high speed weapon with a wide range.";
		}
		
	}
	
	if(a == 9){
		if(pc.wepLevels[2] == 0){
			t = objPupTorch;
			p = 60;
			desc = "Use FIRE to open secret doors and burn enemies."
		}
	}
	
	if(a == 12){
		if(!pc.eventTrigger[Event.gotShield]){
			t = objPupShield;
			p = 110;
			desc = "Absorb one lesser enemy bullet every 30 seconds."
		}
	}
	
	
	
	
	
	
	var s = instance_create_depth(a * 64 + 32, 6 * 64 + 32, ww.layerP, t);
	s.coinPrice = p;
	s.desc = desc;
	s.rangPickup = false;
	s.windPull = false;
	s.magPull = false;
	worldPutRug(a-1, 6);
	
	

}