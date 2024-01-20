function worldLoadPalace(){
	
	pc.palaceWave = 0;
	pc.palaceWaves = [];
	
	
	if(pc.spaceLevel == 1){ worldLoardPalace01(); }
	if(pc.spaceLevel == 2){ worldLoardPalace02(); }
	if(pc.spaceLevel == 3){ worldLoardPalace03(); }
	if(pc.spaceLevel == 4){ worldLoardPalace04(); }
	
	
	
}