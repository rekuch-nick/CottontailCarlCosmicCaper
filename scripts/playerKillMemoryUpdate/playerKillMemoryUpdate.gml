function playerKillMemoryUpdate(){
	
	if(!inOverworld){ return; }
	
	var newMem = {
		a: pc.xMap,
		b: pc.yMap,
		mobsLeft: instance_number(objMob),
	}
	
	for(var i=array_length(pc.killMemory)-1; i>0; i--){
		pc.killMemory[i] = pc.killMemory[i - 1];
	}
	pc.killMemory[0] = newMem;
	
}