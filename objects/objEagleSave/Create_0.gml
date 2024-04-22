image_xscale = 4;
image_yscale = 4;
timeCD = 30 * 10;
justHit = false;

with(objMobShot){ instance_destroy(); }
pc.hurtTime = 0;
pc.image_index = 0;
pc.invulnTime = 2;

playSfx(eagle_scream_112940);