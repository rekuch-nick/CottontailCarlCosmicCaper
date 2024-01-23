
justHit = true;
other.hp -= 1;
with(other){ mobStepDamage(); }


var s = instance_create_depth(other.x + choose(-10, 0, 10), other.y + choose(-10, 0, 10), ww.layerE, objKnightSlash);
if(choose(true, false)){
	s.image_xscale *= -1;
}