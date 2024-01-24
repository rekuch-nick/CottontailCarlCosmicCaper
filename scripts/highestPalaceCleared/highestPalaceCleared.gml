function highestPalaceCleared(){
	var n = 0;
	if(pc.eventTrigger[Event.palace1Clear]){ n = 1; }
	if(pc.eventTrigger[Event.palace2Clear]){ n = 2; }
	if(pc.eventTrigger[Event.palace3Clear]){ n = 3; }
	if(pc.eventTrigger[Event.palace4Clear]){ n = 4; }
	if(pc.eventTrigger[Event.palace5Clear]){ n = 5; }
	if(pc.eventTrigger[Event.palace6Clear]){ n = 6; }
	if(pc.eventTrigger[Event.palace7Clear]){ n = 7; }
	if(pc.eventTrigger[Event.palace8Clear]){ n = 8; }
	if(pc.eventTrigger[Event.palace9Clear]){ n = 9; }
	if(pc.eventTrigger[Event.palace10Clear]){ n = 10; }
	if(pc.eventTrigger[Event.palace11Clear]){ n = 11; }
	return n;
}