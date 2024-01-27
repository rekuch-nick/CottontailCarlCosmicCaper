function worldGetRoomDeepCave(xxx, yyy){
	
	
	if(pc.xMap == 0 && pc.yMap == 11){
		biome(Zone.deepCave);
		ww.noMobs = true; ww.canLion = false;
		wmap("/+/////////////");
		wmap("/+/////////////");
		wmap("/+////.........");
		wmap("/+////.........");
		wmap("/+////.........");
		wmap("/+////.........");
		wmap("/+////.........");
		wmap("/+////.........");
		wmap("/+////.........");
		wmap("/+//...........");
		wmap("/............./");
		wmap("///////////////");
	}
	
	if(pc.xMap == 1 && pc.yMap == 11){
		biome(Zone.deepCave);
		ww.noMobs = true; ww.canLion = false;
		wmap("//...........//");
		wmap("//...........//");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("...............");
		wmap("//...........//");
		wmap("//...........//");
	}
	
	if(pc.xMap == 2 && pc.yMap == 11){
		biome(Zone.deepCave);
		ww.noMobs = true; ww.canLion = false;
		wmap("///////////////");
		wmap("///////////////");
		wmap(".//////////////");
		wmap(".//////////////");
		wmap(".//////////////");
		wmap(".///////. . ///");
		wmap("........    . /");
		wmap("............  /");
		wmap("............../");
		wmap("............../");
		wmap("//...........//");
		wmap("///////////////");
		ww.bmap[8, 5] = imgNPCMole;
		ww.bmap[10, 5] = imgNPCMole;
		ww.bmap[12, 6] = imgNPCMole;
		ww.txt = "Us Moles are not fighters. We will help the kingdom, but look to us after the war, to aid in reconstruction.\n\nIf we dig up anything interesting, we'll save it for you.";
		if(pc.hpMax >= 200 && pc.eventTrigger[Event.gotPowderHorn] && !pc.eventTrigger[Event.gotPowderHorn2]){
			ww.txt = "Look at this, a bottomless powder horn. With this you would always be able to make new bombs.";
			var s = instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupPowderHorn2);
			s.coinPrice = 210; s.desc = "";
		} else if(pc.hpMax >= 150 && pc.eventTrigger[Event.gotMPShell] && !pc.eventTrigger[Event.gotMPShell2]){
			ww.txt = "Look at this, a Greater MP Shell. With this you would regain MP faster.";
			var s = instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupMPShell2);
			s.coinPrice = 210; s.desc = "";
		} else if(pc.eventTrigger[Event.gotCauldren2] && !pc.eventTrigger[Event.gotCauldren3]){
			ww.txt = "Look at this, a Master Cauldren. With this all your potions would heal you to full.";
			var s = instance_create_depth(7 * 64 + 32, 8 * 64 + 32, ww.layerP, objPupCauldren3);
			s.coinPrice = 210; s.desc = "";
		}
	}

}