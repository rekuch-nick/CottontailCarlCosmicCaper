if(!arrayContains(hitList, other)){
	arrayAdd(hitList, other);
	
	other.hurtTime = 20;
	hurtMonster(other, id);
	
	if(destroyOnHit){ timeCD = 0; }
}
