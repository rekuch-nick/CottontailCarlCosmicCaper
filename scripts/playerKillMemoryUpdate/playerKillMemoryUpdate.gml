function playerKillMemoryUpdate(){
	
	var newMem = {
		a: pc.xMap,
		b: pc.yMap,
		mobsLeft: instance_number(objMob),
	}
	
	for(var i=1; i<array_length(pc.killMemory); i++){
		pc.killMemory[i] = pc.killMemory[i - 1];
	}
	pc.killMemory[0] = newMem;
	
}