function worldGetCaveSkulls(xxx, yyy){
	var n = 0;
	
	if(xxx == 8 && yyy == 6){ n = 1; }
	if(xxx == 7 && yyy == 1){ n = 2; }
	if(xxx == 15 && yyy == 4){ n = 3; }
	if(xxx == 4 && yyy == 7){ n = 4; }
	if(xxx == 0 && yyy == 9){ n = 5; }
	if(xxx == 18 && yyy == 9){ n = 6; }
	if(xxx == 0 && yyy == 5){ n = 7; }
	if(xxx == 10 && yyy == 0){ n = 8; }
	if(xxx == 16 && yyy == 4){ n = 9; }
	if(xxx == 4 && yyy == 0){ n = 10; }
	if(xxx == 18 && yyy == 1){ n = 11; }
	
	if(n >= 1){ ww.bmap[2, 3] = imgSkullBlock; }
	if(n >= 2){ ww.bmap[3, 4] = imgSkullBlock; }
	if(n >= 3){ ww.bmap[4, 4] = imgSkullBlock; }
	if(n >= 4){ ww.bmap[5, 3] = imgSkullBlock; }
	if(n >= 5){ ww.bmap[6, 3] = imgSkullBlock; }
	if(n >= 6){ ww.bmap[7, 2] = imgSkullBlock; }
	if(n >= 7){ ww.bmap[8, 2] = imgSkullBlock; }
	if(n >= 8){ ww.bmap[9, 2] = imgSkullBlock; }
	if(n >= 9){ ww.bmap[10, 3] = imgSkullBlock; }
	if(n >= 10){ ww.bmap[11, 3] = imgSkullBlock; }
	if(n >= 11){ ww.bmap[12, 4] = imgSkullBlock; }
}