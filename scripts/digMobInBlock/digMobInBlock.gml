function digMobInBlock(){
	
	return digPointInBlock(x-16, y-16) ||
			digPointInBlock(x+16, y-16) ||
			digPointInBlock(x-16, y+16) ||
			digPointInBlock(x+16, y+16);
	
	
}