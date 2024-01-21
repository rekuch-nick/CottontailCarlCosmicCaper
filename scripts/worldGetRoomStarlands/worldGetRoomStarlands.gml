function worldGetRoomStarlands(){
	
	
	if(pc.xMap == 20 && pc.yMap == 0){
		ww.txt = "The STAR pulses in your hand.\n\nThe universe wants you to defeat the dragon invasion, but cannot interfere directly.\n\nChoose a boon, to help you on your way:";
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CcccccccccccccC");
		wmap("CcccccccccccccC");
		wmap("CcccccccccccccC");
		wmap("CcccccccccccccC");
		wmap("CcccccccccccccC");
		wmap("CcccccccccccccC");
		wmap("CCCCCCCCCCCCCCC");
	}
	
	
	
	
	
	
	if(pc.xMap == 20 && pc.yMap == 4){
		ww.noMobs = true; ww.canLion = false;
		biome(Zone.moon);
		wmap("CC...........CC");
		wmap("CC..........CCC");
		wmap("CC..........CCC");
		wmap("CCZZZZZZZZ...CC");
		wmap("CC...........CC");
		wmap("CC..........CCC");
		wmap("CCC....ZZZZZZCC");
		wmap("CCC..........CC");
		wmap("CC...........CC");
		wmap("CC...CCC...CCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
	}
	
	if(pc.xMap == 20 && pc.yMap == 3){
		ww.noMobs = true; ww.canLion = false;
		biome(Zone.moon);
		wmap("CCCC.......CCCC");
		wmap("CCCC......CCCCC");
		wmap("ZCCC....ZZCCCCC");
		wmap("CCCCCC.....CCCC");
		wmap("ZCCCCZ.....CC..");
		wmap("ZCCCCZ.....CCC.");
		wmap("CCCC.Z.........");
		wmap("CCCC......CCCCC");
		wmap("CCCCC.....CCCCC");
		wmap("CCCCZ......CCCC");
		wmap("CCZZZZZ.....ZCC");
		wmap("CC...........CC");
	}
	
	
	if(pc.xMap == 21 && pc.yMap == 3){
		ww.noMobs = true; ww.canLion = false;
		biome(Zone.moon);
		ww.txt = "What are you doing on the MOON!?\n\nHow did you even get here???";
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("ZCCCCCCCZZCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap(".ZCCCZCCCCCCCCC");
		wmap(".ZZZCZZZZZZCCCZ");
		wmap(".....Z..C..CCCZ");
		wmap("C.........CCCCC");
		wmap("C.........CCCCC");
		wmap("C..........CCCC");
		wmap("C...........ZCC");
		wmap("CCCCCCCCCCCCCCC");
	}
	
	
	if(pc.xMap == 20 && pc.yMap == 2){
		ww.noMobs = true; ww.canLion = false;
		ww.secBlock = imgCheeseBlock; ww.secX = 5; ww.secY = 5; ww.secType = Sec.bomb;
		biome(Zone.moon);
		wmap("CCCC.......CCCC");
		wmap("CZZZZZZ..ZZZ..C");
		wmap("C...Z....Z..Z.C");
		wmap("CC....Z.......C");
		wmap("C..ZZZZZZZZ...C");
		wmap("C.........Z..ZC");
		wmap("CZZZZZZ...ZZ.ZC");
		wmap("C.....Z...Z.CCC");
		wmap("C..Z..........C");
		wmap("C..Z..ZZZZZZZZC");
		wmap("C........ZZ..ZC");
		wmap("CCCC.......CCCC");
	}
	
	
	
	if(pc.xMap == 20 && pc.yMap == 1){
		ww.noMobs = true; ww.canLion = false;
		ww.txt = "Look, I'm not going to go into details but you REALLY shouldn't be here on the moon.\n\nTake this gift and go home, PLEASE.";
		
		biome(Zone.moon);
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCCCCCCCCCCCC");
		wmap("CCCCC..ZZZZZ.ZC");
		wmap("C....ZZZZ.Z...C");
		wmap("CZ...........CC");
		wmap("CZ...........ZC");
		wmap("C...........CCC");
		wmap("CCCC.......CCCC");
	}
	
	
	

}