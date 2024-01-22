function playerKnightSlash(){
	
	with(objMob){
		var dis = point_distance(pc.x, pc.y, x, y);
		
		
		var e = instance_create_depth(x, y, ww.layerE, objKnightSlash);
		e.image_xscale = 6; e.image_yscale = 6;
		hurtTime = 20;
		hp -= 30;
	}
	
	
	with(objMobShot){
		var dis = point_distance(pc.x, pc.y, x, y);
		
		
		instance_create_depth(x, y, ww.layerE, objKnightSlash);
		instance_destroy();
	}
	
	
	
}