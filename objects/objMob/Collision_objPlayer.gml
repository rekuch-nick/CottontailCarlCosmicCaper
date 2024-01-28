if(pc.hurtTime > 0){ return; }
if(pc.invulnTime > 0){ return; }
if(pc.swordDashTime > 0){ return; }
if(frozenTime > 0 || stunTime){ return; }
if(hurtTime > 0){ return; }
if(falling){ return; }
if(harmlessWhileBlocking && blockTime > 0){ return; }

inert = noone;
hurtPlayer(bumpPow, false);
pc.poisonTime = max(pc.poisonTime, bumpPoison);


