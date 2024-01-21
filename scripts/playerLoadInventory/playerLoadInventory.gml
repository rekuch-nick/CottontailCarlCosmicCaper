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
	s.eve[1] = Event.gotChargeShot2; s.img[1] = imgPupChargeCharm2;
	s.desc[1] = "This charm will power up your lazer eyes if you don't use them for a while.";
	
	var s = instance_create_depth(4 * 64, 2 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotSpeedShot; s.img[0] = imgPupSpeedCharm;
	s.desc[0] = "This charm will make your lazer eyes a little faster.";
	s.eve[1] = Event.gotSpeedShot2; s.img[1] = imgPupSpeedCharm2;
	s.desc[1] = "This charm will make your lazer eyes a little faster.";
	
	var s = instance_create_depth(5 * 64, 2 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotMightShot; s.img[0] = imgPupMightCharm;
	s.desc[0] = "This charm will increase the power of your lazer eyes.";
	s.eve[1] = Event.gotMightShot2; s.img[1] = imgPupMightCharm2;
	s.desc[1] = "This charm will increase the power of your lazer eyes.";
	
	var s = instance_create_depth(6 * 64, 2 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotMoreShot; s.img[0] = imgPupMoreCharm;
	s.desc[0] = "This charm will increase the number of beams from your lazer eyes.";
	s.eve[1] = Event.gotMoreShot2; s.img[1] = imgPupMoreCharm2;
	s.desc[1] = "This charm will increase the number of beams from your lazer eyes.";
	
	
	
	
	
	
	
	
	
	var s = instance_create_depth(2 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotRang; s.img[0] = imgPlayerRang;
	s.desc[0] = "Your trusty boomarang, as useful for picking up far away items as it is for bashing monsters.";
	s.eve[1] = Event.gotRang2; s.img[1] = imgPlayerRang2;
	s.desc[1] = "A slim metal boomarang, as useful for picking up far away items as it is for bashing monsters.";
	
	var s = instance_create_depth(3 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotStars; s.img[0] = imgPlayerStar;
	s.desc[0] = "A low damage, high speed weapon.";
	
	var s = instance_create_depth(4 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotTorch; s.img[0] = imgPupTorch;
	s.desc[0] = "The torch lets you burn monsters and open secret doors hidden under things like bushes.";
	
	var s = instance_create_depth(5 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.haveBombs; s.img[0] = imgPupBomb;
	s.desc[0] = "Bombs are a superior combat item, and can also open some secret doors.";
	
	var s = instance_create_depth(6 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotWindStone; s.img[0] = imgPupWindStone;
	s.desc[0] = "Call swirling winds to deflect most kinds of enemy shots.";
	
	var s = instance_create_depth(7 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotWindStone; s.img[0] = imgPupWindStone;
	s.desc[0] = "Call blistering cold to freeze monsters and water.";
	
	var s = instance_create_depth(9 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotHole; s.img[0] = imgPupHole;
	s.desc[0] = "Toss this portable hole anywhere to pop out the other side.";
	
	var s = instance_create_depth(10 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotWand; s.img[0] = imgPupWand;
	s.desc[0] = "Waving this wand can have all kinds of wild effects. Make sure to try it out in different places.";
	
	var s = instance_create_depth(12 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotPhiloStone; s.img[0] = imgPupPhiloStone;
	s.desc[0] = "With the Philosopher's Stone you can transmute gold into lead! (bullets)";
	
	
	
	
	
	
	
	
	
	
	
	var s = instance_create_depth(2 * 64, 4 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotRangPack; s.img[0] = imgPlayerRangPack;
	s.desc[0] = "Some spare boomerangs, donated by a judgmental cat. Lets you throw more at a time.";
	
	var s = instance_create_depth(3 * 64, 4 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotPoisonVial; s.img[0] = imgPupPoisonVial;
	s.desc[0] = "Your throwing stars will poison monsters.";
	
	var s = instance_create_depth(6 * 64, 4 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotPinwheel; s.img[0] = imgPupPinwheel;
	s.desc[0] = "Using the Wind Stone will draw in HP and MP orbs.";
	
	
	
	
	
	
	
	
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