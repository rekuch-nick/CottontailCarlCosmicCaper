function playMusic(s){
	
	if(is_undefined(s)){
		if(pc.inSpace){
			s = songSpace;
		} else if (pc.inOverworld) {
			//s = songOverworld;
			s = songMain;
		} else if (ww.inShop) {
			s = songShop;
		} else if (ww.inDungeonEntrence) {
			s = songDunEnt;
		} else {
			s = songMostCaves;
		}
	}
	
	ww.currentSong = s;
	
	if(ww.volMusic < 100){ 
		audio_stop_all();
		return; 
	}
	if(s == noone){ audio_stop_all(); }
	
	audio_stop_sound(ww.song);
	ww.song = audio_play_sound(s, 10, true);
	
	
	
}