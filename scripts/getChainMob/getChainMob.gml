function getChainMob(notMe, disMax, closest){
	var m = noone;
	var bestDis = 2000;
	
	with(objMob){
		if(id == notMe){ continue; }
		var dis = point_distance(x, y, other.x, other.y);
		if(closest){
			if(dis < bestDis){
				m = id;
				bestDis = dis;
			}
		} else {
			if(dis < disMax){ return id; }
		}
	}
	
	return m;
}