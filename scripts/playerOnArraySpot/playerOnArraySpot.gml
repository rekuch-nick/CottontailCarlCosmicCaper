function playerOnArraySpot(arr){
	for(var i=0; i<array_length(arr); i++){
		if(pc.xMap == arr[i].a && pc.yMap == arr[i].b){
			return true;
		}
	}
	return false;
}