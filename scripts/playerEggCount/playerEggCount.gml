function playerEggCount(){
	var n = 0;
	if(pc.eventTrigger[Event.palace1Clear]){ n++; }
	if(pc.eventTrigger[Event.palace2Clear]){ n++; }
	if(pc.eventTrigger[Event.palace3Clear]){ n++; }
	if(pc.eventTrigger[Event.palace4Clear]){ n++; }
	if(pc.eventTrigger[Event.palace5Clear]){ n++; }
	if(pc.eventTrigger[Event.palace6Clear]){ n++; }
	if(pc.eventTrigger[Event.palace7Clear]){ n++; }
	if(pc.eventTrigger[Event.palace8Clear]){ n++; }
	if(pc.eventTrigger[Event.palace9Clear]){ n++; }
	if(pc.eventTrigger[Event.palace10Clear]){ n++; }
	if(pc.eventTrigger[Event.palace11Clear]){ n++; }
	return n;
}