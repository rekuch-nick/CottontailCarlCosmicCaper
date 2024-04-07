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
	
	ini_close();
	
	show_debug_message("Loaded File");
	
}