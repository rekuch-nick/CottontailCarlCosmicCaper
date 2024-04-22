if(!pc.eventTrigger[Event.gotBird]){ return; }
if(!ww.state == State.play){ return; }
if(pc.inSpace){ return; }
if(point_distance(x, y, pc.x, pc.y) > 500){ return; }

draw_self();