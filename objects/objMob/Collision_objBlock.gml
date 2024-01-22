if(!pc.eventTrigger[Event.gotCrowbar]){ return; }
if(other.x == other.xSpot * 64 && other.y == other.ySpot * 64){
	return;
}

hurtTime = 20;
hp -= 20;