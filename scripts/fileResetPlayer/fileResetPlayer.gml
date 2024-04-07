function fileResetPlayer(){
	
	for(var i=0; i<300; i++){
		pc.eventTrigger[i] = false;
	}
	pc.hpMax = 100;
	pc.mpMax = 100;
	pc.coins = 0;
	pc.bombs = 0;
	pc.potion = noone;
	pc.rangsMax = 1;
	pc.wepLevels = [1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0];
	
	pc.eventTrigger[Event.gotRang] = true;
}