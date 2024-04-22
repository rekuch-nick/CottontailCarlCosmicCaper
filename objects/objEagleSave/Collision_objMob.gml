
justHit = true;

if(other.object_index == objMobDragonBoneKing || other.object_index == objMobDragonQueen){
	//if(other.hp > 10){ other.hp -= 1; }
} else {
	other.hp -= 1;
	with(other){ mobStepDamage(); }
}



var s = instance_create_depth(other.x + choose(-10, 0, 10), other.y + choose(-10, 0, 10), ww.layerE, objKnightSlash);
if(choose(true, false)){
	s.image_xscale *= -1;
}