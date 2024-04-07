function fileResetWorld(){ with(objWorld){
	for(var a=0; a<30; a++){ for(var b=0; b<20; b++){
		secExposed[a, b] = false;
		caveCoins[a, b] = 0;
	}}
	caveCoins[7, 4] = 20;
	caveCoins[10, 8] = 20;
	caveCoins[5, 3] = 10;
	caveCoins[6, 3] = 10;
	caveCoins[13, 7] = 20;
	caveCoins[1, 2] = 60;
	caveCoins[1, 3] = 20;
	caveCoins[6, 7] = 30;
	caveCoins[15, 3] = 40;
	caveCoins[17, 3] = 40;
	caveCoins[15, 7] = 30;
	caveCoins[16, 8] = 30;
	caveCoins[8, 0] = 35;
	caveCoins[8, 1] = 35;
	caveCoins[14, 2] = 35;
	caveCoins[17, 9] = 50;
	caveCoins[12, 6] = 35;
	caveCoins[4, 8] = 60;
	caveCoins[5, 0] = 200;
	caveCoins[9, 6] = 40;
	caveCoins[9, 3] = 30;
	caveCoins[10, 2] = 100;
}}