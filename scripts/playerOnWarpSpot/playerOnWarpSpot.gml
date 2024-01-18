function playerOnWarpSpot(){
	for(var i=0; i<array_length(pc.warpSpots); i++){
		if(pc.xMap == pc.warpSpots[i].a && pc.yMap == pc.warpSpots[i].b){
			return true;
		}
	}
	return false;
}