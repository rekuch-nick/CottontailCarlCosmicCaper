if(!pc.eventTrigger[Event.gotBird]){ return; }
if(!ww.state == State.play){ return; }
if(pc.inSpace){ return; }

draw_self();