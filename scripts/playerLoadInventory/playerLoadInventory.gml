function playerLoadInventory(){
	pc.eventTrigger[Event.haveBombs] = pc.bombs > 0;
	
	// 11 across (2 - 12) , not sure how deep, leave room for text, 6 or 7 (2 - 7/8)
	pc.blockInput = true;
	ww.state = State.inventory;
	
	var s = instance_create_depth(2 * 64, 2 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotStar; s.img[0] = imgPupStar;
	s.desc[0] = "With this star, you can survive in space. Old Turtle knows where the space doors are.";
	
	var s = instance_create_depth(3 * 64, 2 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotChargeShot; s.img[0] = imgPupChargeCharm;
	s.desc[0] = "This charm will power up your lazer eyes if you don't use them for a while.";
	
	
	var s = instance_create_depth(2 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotRang; s.img[0] = imgPlayerRang;
	s.desc[0] = "Your trusty boomarang, as useful for picking up far away items as it is for bashing monsters.";
	
	var s = instance_create_depth(3 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotRangPack; s.img[0] = imgPlayerRangPack;
	s.desc[0] = "Some spare boomerangs, donated by a judgmental cat. Lets you throw more at a time.";
	
	var s = instance_create_depth(8 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotTorch; s.img[0] = imgPupTorch;
	s.desc[0] = "The torch lets you burn monsters and open secret doors hidden under things like bushes.";
	
	
	
	
	var s = instance_create_depth(2 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotMPShell; s.img[0] = imgPupMPShell;
	s.desc[0] = "Just holding this seashell causes your MP to recover a little faster.";
	
	
	
	var s = instance_create_depth(2 * 64, 7 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.palace1Clear; s.img[0] = imgEgg;
	s.desc[0] = "A small decorated egg, taken from a dragon. Who knows what it could become?";
	
	var s = instance_create_depth(3 * 64, 7 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.palace2Clear; s.img[0] = imgEgg;
	s.desc[0] = "A small decorated egg, taken from a dragon. Who knows what it could become?";
	
	var s = instance_create_depth(4 * 64, 7 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.palace3Clear; s.img[0] = imgEgg;
	s.desc[0] = "A small decorated egg, taken from a dragon. Who knows what it could become?";
	
	var s = instance_create_depth(5 * 64, 7 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.palace4Clear; s.img[0] = imgEgg;
	s.desc[0] = "A small decorated egg, taken from a dragon. Who knows what it could become?";
	
	var s = instance_create_depth(6 * 64, 7 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.palace5Clear; s.img[0] = imgEgg;
	s.desc[0] = "A small decorated egg, taken from a dragon. Who knows what it could become?";
	
	var s = instance_create_depth(7 * 64, 7 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.palace6Clear; s.img[0] = imgEgg;
	s.desc[0] = "A small decorated egg, taken from a dragon. Who knows what it could become?";
	
	var s = instance_create_depth(8 * 64, 7 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.palace7Clear; s.img[0] = imgEgg;
	s.desc[0] = "A small decorated egg, taken from a dragon. Who knows what it could become?";
	
	var s = instance_create_depth(9 * 64, 7 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.palace8Clear; s.img[0] = imgEgg;
	s.desc[0] = "A small decorated egg, taken from a dragon. Who knows what it could become?";
	
	var s = instance_create_depth(10 * 64, 7 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.palace9Clear; s.img[0] = imgEgg;
	s.desc[0] = "A small decorated egg, taken from a dragon. Who knows what it could become?";
	
	var s = instance_create_depth(11 * 64, 7 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.palace9Clear; s.img[0] = imgEgg;
	s.desc[0] = "A small decorated egg, taken from a dragon. Who knows what it could become?";
	
	var s = instance_create_depth(12 * 64, 7 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.palace9Clear; s.img[0] = imgEgg;
	s.desc[0] = "A small decorated egg, taken from a dragon. Who knows what it could become?";
	
}