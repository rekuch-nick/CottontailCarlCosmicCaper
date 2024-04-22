function playMusic(s){
	
	if(is_undefined(s)){
		if(pc.inSpace){
			s = songSpace;
		} else if (pc.inOverworld) {
			s = noone;
			if(pc.xMap >= 0 && pc.yMap >= 0 && pc.xMap <= 18 && pc.yMap <= 9){
				s = songMain;
			} else if(pc.xMap >= 20){
				s = songPeace;
			}
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
	ww.song = audio_play_sound(s, 1, true);
	
	
	
}