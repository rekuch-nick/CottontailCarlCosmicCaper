if(pc.hurtTime > 0){ return; }
if(inertTime > 0){ return; }



hurtPlayer(pow, isBlockable);

if(destroyOnHit){ instance_destroy(); }