function fileSave(){
	
	ini_open("CCCCsaveData.ini");
	
	for(var i=0; i<300; i++){
		ini_write_real("Main", "event" + string(i), pc.eventTrigger[i]);
	}
	ini_write_real("Main", "hpMax", pc.hpMax);
	ini_write_real("Main", "mpMax", pc.mpMax);
	ini_write_real("Main", "coins", pc.coins);
	ini_write_real("Main", "bombs", pc.bombs);
	ini_write_real("Main", "potion", pc.potion);
	ini_write_real("Main", "rangsMax", pc.rangsMax);
	for(var i=0; i<11; i++){
		ini_write_real("Main", "wepLevels" + string(i), pc.wepLevels[i]);
	}
	for(var a=0; a<30; a++){ for(var b=0; b<20; b++){
		ini_write_real("Main", "secExposed" + string(a) + " " + string(b), ww.secExposed[a, b]);
		ini_write_real("Main", "caveCoins" + string(a) + " " + string(b), ww.caveCoins[a, b]);
	}}
	
	ini_close();
	
	show_debug_message("Saved File");
	
}