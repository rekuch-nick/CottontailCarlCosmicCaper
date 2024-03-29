function playerStepPlayOrPause(){
	
	if(debugPossible && keyboard_check_pressed(vk_backspace)){
		debug = !debug;
		if(debug){
			//hpMax = 300;
			hp = hpMax;
			mp = mpMax;
			coins = coinsMax();
			bombs = bombsMax();
			eventTrigger[Event.gotStar] = true;
			eventTrigger[Event.gotMap] = true;
			wepLevels[2]  = 1; eventTrigger[Event.gotTorch] = true; // torch
			with(objMob){ hp = 0; }
		}
	}
	debugSetLevelCleated();
	if(debug && keyboard_check_pressed(vk_insert)){
		for(var i=0; i<300; i++){ eventTrigger[i] = true; }
		for(var i=0; i<11; i++){ wepLevels[i] = max(wepLevels[i], 1); }
	}
	
	
	if(charPressed == "1" && wepLevels[0] > 0){ wepSelected = 0; }
	if(charPressed == "2" && wepLevels[1] > 0){ wepSelected = 1; }
	if(charPressed == "3" && wepLevels[2] > 0){ wepSelected = 2; }
	if(charPressed == "4" && wepLevels[3] > 0){ wepSelected = 3; }
	if(charPressed == "5" && wepLevels[4] > 0){ wepSelected = 4; }
	if(charPressed == "6" && wepLevels[5] > 0){ wepSelected = 5; }
	if(charPressed == "7" && wepLevels[6] > 0){ wepSelected = 6; }
	if(charPressed == "8" && wepLevels[7] > 0){ wepSelected = 7; }
	if(charPressed == "9" && wepLevels[8] > 0){ wepSelected = 8; }
	if(charPressed == "0" && wepLevels[9] > 0){ wepSelected = 9; }
	
	if(wepSelected == 3 && xIn == 0 && bombs < 1){ zIn ++; }
	if(zIn > 0){
		do{
			wepSelected ++;
			if(wepSelected > 10){ wepSelected = 0; }
		} until (wepLevels[wepSelected] > 0 && (bombs > 0 || wepSelected != 3) );
	}
	
	if(zIn < 0){
		do{
			wepSelected --;
			if(wepSelected < 0){ wepSelected = 10; }
		} until (wepLevels[wepSelected] > 0&& (bombs > 0 || wepSelected != 3) );
	}
}