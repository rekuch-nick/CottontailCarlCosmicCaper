function debugSetLevelCleated(){ with(objPlayer) {
	
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && charPressed == "1"){
		hpMax += 10; hp += 10;
		bombs = max(bombs, 4);
		eventTrigger[Event.gotMap] = true;
		eventTrigger[Event.palace1Clear] = true;
		eventTrigger[Event.gotStar] = true;
		eventTrigger[Event.gotHealingHeart] = true;
		eventTrigger[Event.gotMPShell] = true;
	}
	
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && charPressed == "2"){
		hpMax += 10; hp += 10;
		eventTrigger[Event.gotChargeShot] = true;
		eventTrigger[Event.palace2Clear] = true;
		eventTrigger[Event.gotRangPack] = true;
		wepLevels[2]  = 1; eventTrigger[Event.gotTorch] = true; // torch
		eventTrigger[Event.gotSpeedShot] = true;
		eventTrigger[Event.gotRubberBand] = true;
		eventTrigger[Event.gotChair] = true;
		eventTrigger[Event.gotShoe] = true;
	}
	
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && charPressed == "3"){
		hpMax += 20; hp += 20;
		wepLevels[4]  = 1; eventTrigger[Event.gotWindStone] = true; // windstone
		eventTrigger[Event.gotPinwheel] = true;
		eventTrigger[Event.palace3Clear] = true;
		eventTrigger[Event.gotRang2] = true;
		eventTrigger[Event.gotShield] = true;
	}
	
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && charPressed == "4"){
		hpMax += 15; hp += 15;
		bombs = max(bombs, 8);
		wepLevels[1] = 1; eventTrigger[Event.gotStars] = true; // stars
		eventTrigger[Event.gotMagnet] = true;
		eventTrigger[Event.palace4Clear] = true;
		eventTrigger[Event.gotCauldren1] = true;
		eventTrigger[Event.gotMoreShot] = true;
		eventTrigger[Event.gotHoneycomb] = true;
		eventTrigger[Event.gotFarShot] = true;
		wepLevels[6]  = 1; eventTrigger[Event.gotOrbit] = true; // Orbit / flail
	}
	
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && charPressed == "5"){
		hpMax += 10; hp += 10;
		wepLevels[5] = 1; eventTrigger[Event.gotIceStone] = true; // ice stone
		wepLevels[9] = 1; eventTrigger[Event.gotSword] = true; // sword
		eventTrigger[Event.palace5Clear] = true;
		eventTrigger[Event.gotRing1] = true;
		eventTrigger[Event.gotOil] = true;
		eventTrigger[Event.gotDiscountCard] = true;
	}
	
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && charPressed == "6"){
		hpMax += 10; hp += 10;
		wepLevels[8] = 1; eventTrigger[Event.gotWand] = true; // wand
		
		eventTrigger[Event.palace6Clear] = true;
	}
	
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && charPressed == "7"){
		hpMax += 10; hp += 10;
		eventTrigger[Event.gotShield2] = true;
		eventTrigger[Event.gotKeyCard] = true;
		eventTrigger[Event.gotBombBag] = true;
		eventTrigger[Event.gotCoinBag] = true;
		eventTrigger[Event.gotStrangePaw] = true; mpMax += 100; mp += 100;
		eventTrigger[Event.gotFeather] = true;
		eventTrigger[Event.palace7Clear] = true;
		eventTrigger[Event.gotPoisonVial] = true;
		eventTrigger[Event.gotCrowbar] = true;
		eventTrigger[Event.gotRang3] = true;
		eventTrigger[Event.gotMightShot] = true;
	}
	
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && charPressed == "8"){
		hpMax += 10; hp += 10;
		eventTrigger[Event.gotCauldren2] = true;
		eventTrigger[Event.gotSpeedShot2] = true;
		eventTrigger[Event.palace8Clear] = true;
		wepLevels[10] = 1; eventTrigger[Event.gotPhiloStone] = true; // philo
		eventTrigger[Event.gotPowderHorn] = true;
	}
	
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && charPressed == "9"){
		hpMax += 10; hp += 10;
		eventTrigger[Event.gotMightShot2] = true;
		eventTrigger[Event.palace9Clear] = true;
	}
	
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && charPressed == "0"){
		hpMax += 10; hp += 10;
		wepLevels[7] = 1; eventTrigger[Event.gotHole] = true; // hole
		eventTrigger[Event.gotMoreShot2] = true;
		eventTrigger[Event.gotRang4] = true;
		eventTrigger[Event.palace10Clear] = true;
	}
	
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && keyboard_check_pressed(189)){
		hpMax += 10; hp += 10;
		eventTrigger[Event.gotCross] = true;
		eventTrigger[Event.gotPowderHorn2] = true;
		eventTrigger[Event.gotCauldren3] = true;
		eventTrigger[Event.gotMPShell2] = true;
		eventTrigger[Event.palace11Clear] = true;
		eventTrigger[Event.gotDoll] = true;
	}
	if(debugPossible && keyboard_check(vk_shift) && keyboard_check(vk_delete) && keyboard_check_pressed(187)){
		pc.eventTrigger[Event.gotBird] = true;
	}
	
	
	
	
}}


