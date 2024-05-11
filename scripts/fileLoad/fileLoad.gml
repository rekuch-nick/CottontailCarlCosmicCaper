function fileLoad(){
	
	ini_open("CCCCsaveData.ini");
	
	
	for(var i=0; i<300; i++){
		pc.eventTrigger[i] = ini_read_real("Main", "event" + string(i), 0);
	}
	pc.hpMax = ini_read_real("Main", "hpMax", pc.hpMax);
	pc.mpMax = ini_read_real("Main", "mpMax", pc.mpMax);
	pc.coins = ini_read_real("Main", "coins", pc.coins);
	pc.bombs = ini_read_real("Main", "bombs", pc.bombs);
	pc.potion = ini_read_real("Main", "potion", pc.potion);
	pc.rangsMax = ini_read_real("Main", "rangsMax", pc.rangsMax);
	for(var i=0; i<11; i++){
		pc.wepLevels[i] = ini_read_real("Main", "wepLevels" + string(i), pc.wepLevels[i]);
	}
	for(var a=0; a<30; a++){ for(var b=0; b<20; b++){
		ww.secExposed[a, b] = ini_read_real("Main", "secExposed" + string(a) + " " + string(b), ww.secExposed[a, b]);
		ww.caveCoins[a, b] = ini_read_real("Main", "caveCoins" + string(a) + " " + string(b), ww.caveCoins[a, b]);
	}}
	ww.volMusic = ini_read_real("Main", "volMusic", 100);
	ww.volSfx = ini_read_real("Main", "volSfx", 100);
	with(objButtonMusic){ image_index = ww.volMusic == 100 ? 0 : 1; }
	with(objButtonSfx){ image_index = ww.volSfx == 100 ? 0 : 1; }
	if(ww.volMusic < 100){ 
		//playMusic(noone);
		audio_stop_all(); 
	}
	pc.frogBuys = ini_read_real("Main", "frogBuys", 0);
	
	ini_close();
	
	pc.eventTrigger[Event.gotRang] = true;
}