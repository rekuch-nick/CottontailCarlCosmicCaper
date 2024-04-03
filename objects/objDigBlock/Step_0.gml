if(ww.state != State.digGame){ return; }

if(hp < 1){
	
	if(sprite_index == imgDigRockGold){
		var val = 5 + min(pc.digStage, 5);
		pc.coins = min(pc.coins + val, coinsMax());
		var s = instance_create_depth(x + 32, y + 32, ww.layerE, objEffect);
		s.sprite_index = imgCoin;
		s.ySpeed = -1;
	}
	
	ww.bmap[xSpot, ySpot] = noone;
	instance_destroy();
}