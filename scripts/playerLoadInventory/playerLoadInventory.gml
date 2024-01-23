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
	
	
	var s = instance_create_depth(9 * 64, 2 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotCoinBag; s.img[0] = imgCoinBag;
	s.desc[0] = "With this, you can hold up to 999 coins instead of just 255.";
	
	var s = instance_create_depth(10 * 64, 2 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotGlasses; s.img[0] = imgPupGlasses;
	s.desc[0] = "With improved eyesight, you'll see the location of all secret doors.";
	
	var s = instance_create_depth(11 * 64, 2 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotMonocule; s.img[0] = imgPupFindShotUpMore;
	s.desc[0] = "Find ShotUP power-ups more often.";
	
	var s = instance_create_depth(12 * 64, 2 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotHealingHeart; s.img[0] = imgHealingHeart;
	s.desc[0] = "Recover your HP over time.";
	
	
	
	
	
	
	
	
	
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
	s.eve[0] = Event.gotWindStone; s.img[0] = imgPupWindStoneCrack;
	s.desc[0] = "Call swirling winds to deflect most kinds of enemy shots. A crack limits the Wind Stone's power.";
	s.eve[1] = Event.gotWindStone; s.img[1] = imgPupWindStoneCrack;
	s.desc[1] = "Call swirling winds to deflect most kinds of enemy shots and slice foes.";
	
	var s = instance_create_depth(7 * 64, 3 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotIceStone; s.img[0] = imgPupIceStone;
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
	
	var s = instance_create_depth(4 * 64, 4 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotOil; s.img[0] = imgPupOil;
	s.desc[0] = "Your fires burn hotter and larger.";
	
	var s = instance_create_depth(5 * 64, 4 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotBombBag; s.img[0] = imgBombBag;
	s.desc[0] = "You can carry up to 16 bombs instead of just 8.";
	
	var s = instance_create_depth(6 * 64, 4 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotPinwheel; s.img[0] = imgPupPinwheel;
	s.desc[0] = "Using the Wind Stone will draw in HP and MP orbs.";
	
	
	
	var s = instance_create_depth(2 * 64, 5 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotMap; s.img[0] = imgMap;
	s.desc[0] = "It should be a little easier to get around with this in hand.";
	
	var s = instance_create_depth(3 * 64, 5 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotMagnet; s.img[0] = imgPupMagnet;
	s.desc[0] = "Coins will be pulled towards you.";
	
	var s = instance_create_depth(4 * 64, 5 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotRubberBand; s.img[0] = imgPupRubberBand;
	s.desc[0] = "Blink longer and move faster after being hurt.";
	
	
	
	
	var s = instance_create_depth(2 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotMPShell; s.img[0] = imgPupMPShell;
	s.desc[0] = "Just holding this seashell causes your MP to recover a little faster.";
	
	var s = instance_create_depth(3 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotRing1; s.img[0] = imgPupRing; s.desc[0] = "Reduces damage taken by 25%.";
	s.eve[1] = Event.gotRing2; s.img[1] = imgPupRing2; s.desc[1] = "Reduces damage taken by 50%.";
	s.eve[2] = Event.gotRing3; s.img[2] = imgPupRing3; s.desc[2] = "Reduces damage taken by 75%.";
	
	var s = instance_create_depth(4 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotShield; s.img[0] = imgPlayerShield; 
	s.desc[0] = "Blocks minor enemy shots once every 30 seconds.";
	
	var s = instance_create_depth(5 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotCauldren1; s.img[0] = imgPupCauldren1; s.desc[0] = "Using any potion while under half HP will also heal you some.";
	s.eve[1] = Event.gotCauldren2; s.img[1] = imgPupCauldren2; s.desc[1] = "Using any potion will restore MP and HP up to half.";
	s.eve[2] = Event.gotCauldren3; s.img[2] = imgPupCauldren3; s.desc[2] = "Using any potion will heal your HP and MP.";
	
	var s = instance_create_depth(6 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotHoneycomb; s.img[0] = imgPupHoneycomb; 
	s.desc[0] = "Bees will fight by your side in space.";
	
	var s = instance_create_depth(7 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotCross; s.img[0] = imgPupCross; 
	s.desc[0] = "Stops monsters from resurrecting.";
	
	var s = instance_create_depth(8 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotDiscountCard; s.img[0] = imgPupDiscountCard; 
	s.desc[0] = "Good for 15% off at all Lizard Brother's Retail. Non-transferable.";
	
	var s = instance_create_depth(9 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotCrowbar; s.img[0] = imgPupCrowbar; 
	s.desc[0] = "When pushing movable blocks, they move fast enough to hurt monsters.";
	
	var s = instance_create_depth(10 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotFeather; s.img[0] = imgPupFeather; 
	s.desc[0] = "In your darkest hour, the Eagle will come.";
	if(pc.featherCD > 0){
		s.desc[0] += " Recharging.";
		s.img[0] = imgPupFeatherDim; 
	}
	
	var s = instance_create_depth(11 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotCape; s.img[0] = imgPupCape; 
	s.desc[0] = "Marks your status as a Knight.\nMake an attack when you restore your shield.";
	s.eve[1] = Event.gotCape2; s.img[1] = imgPupCape2; 
	s.desc[1] = "Marks your status as a Paladin.\nMake an attack when you restore your shield, which happens quickly.";
	
	var s = instance_create_depth(12 * 64, 6 * 63, hud.depth - 1, objItemTooltip);
	s.eve[0] = Event.gotRang; s.img[0] = imgCarrot; 
	s.desc[0] = "Your max HP goes up by 5 for each carrot you eat.";
	
	
	
	
	
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