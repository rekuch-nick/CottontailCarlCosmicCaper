function worldGetRoomCaveCarrot(xxx, yyy, a, b, e){
	
	if( xxx == a && yyy == b){
		if(!pc.eventTrigger[e]){
			ww.bmap[7, 5] = imgNPCFox;
			ww.txt = "Eat, so that you can keep your strength.";
			var s = instance_create_depth(ww.roomWidth / 2, 500, ww.layerP, objPupCarrot);
			s.eventNumber = e;
		}
	}

}