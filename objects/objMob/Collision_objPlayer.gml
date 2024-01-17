if(pc.hurtTime > 0){ return; }
if(frozenTime > 0 || stunTime){ return; }
if(hurtTime > 0){ return; }
if(falling){ return; }
if(harmlessWhileBlocking && blockTime > 0){ return; }

inert = noone;
hurtPlayer(bumpPow, false);



