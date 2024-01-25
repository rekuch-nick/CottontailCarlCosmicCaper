function lowestPalaceCleared(){
	var n = 0;
	if(pc.eventTrigger[Event.palace1Clear]){ n = 1; }
	if(n == 1 && pc.eventTrigger[Event.palace2Clear]){ n = 2; }
	if(n == 2 && pc.eventTrigger[Event.palace3Clear]){ n = 3; }
	if(n == 3 && pc.eventTrigger[Event.palace4Clear]){ n = 4; }
	if(n == 4 && pc.eventTrigger[Event.palace5Clear]){ n = 5; }
	if(n == 5 && pc.eventTrigger[Event.palace6Clear]){ n = 6; }
	if(n == 6 && pc.eventTrigger[Event.palace7Clear]){ n = 7; }
	if(n == 7 && pc.eventTrigger[Event.palace8Clear]){ n = 8; }
	if(n == 8 && pc.eventTrigger[Event.palace9Clear]){ n = 9; }
	if(n == 9 && pc.eventTrigger[Event.palace10Clear]){ n = 10; }
	if(n == 10 && pc.eventTrigger[Event.palace11Clear]){ n = 11; }
	return n;
}