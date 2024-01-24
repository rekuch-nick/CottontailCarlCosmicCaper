function worldLoadPalace(){
	
	pc.palaceWave = 0;
	pc.palaceWaves = [];
	
	
	if(pc.spaceLevel == 1){ worldLoardPalace01(); }
	if(pc.spaceLevel == 2){ worldLoardPalace02(); }
	if(pc.spaceLevel == 3){ worldLoardPalace03(); }
	if(pc.spaceLevel == 4){ worldLoardPalace04(); }
	if(pc.spaceLevel == 5){ worldLoardPalace05(); }
	if(pc.spaceLevel == 6){ worldLoardPalace06(); }
	if(pc.spaceLevel == 7){ worldLoardPalace07(); }
	
	
	
}