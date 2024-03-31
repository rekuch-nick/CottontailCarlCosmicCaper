function worldGetRoomGrave(xxx, yyy){
	
	
	if(xxx == 0 && yyy == 0){
		ww.noMobs = true; ww.canLion = false;
		biome(Zone.grave);
		wmap("///////////####");
		wmap("/...TTT......##");
		wmap("/...PPP........");
		wmap("/...PPP........");
		wmap("/..fPPPf.......");
		wmap("/..fPPPf.......");
		wmap("/..fPPPf.......");
		wmap("/..fM=Mf.......");
		wmap("/..ff.ff.......");
		wmap("/..............");
		wmap("##...........##");
		wmap("##...........#~");
	}
	
	if(xxx == 0 && yyy == 1){
		biome(Zone.grave);
		wmap("##...........~~");
		wmap("##...........~~");
		wmap("#...........~~.");
		wmap("#..........~~..");
		wmap("#..........~~..");
		wmap("#..........~~..");
		wmap("#.........~~...");
		wmap("~~~~~~~~~~~....");
		wmap("~~~~~~~~.......");
		wmap("//.............");
		wmap("//...........##");
		wmap("//...........##");
	}
	
	if(xxx == 0 && yyy == 2){
		biome(Zone.grave);
		ww.secBlock = imgGraveDirt; ww.secX = 9; ww.secY = 6; ww.secType = Sec.push;
		ww.pushableList = [{a:9, b:6}];
		wmap("//...........##");
		wmap("//...........##");
		wmap("//.............");
		wmap("//...g.....g...");
		wmap("//.............");
		wmap("//.............");
		wmap("//.gg....=.....");
		wmap("//.............");
		wmap("//.............");
		wmap("//..g.....g....");
		wmap("//...........##");
		wmap("//...........##");
	}
	
	if(xxx == 0 && yyy == 3){
		biome(Zone.grave);
		ww.secBlock = imgGraveDirt; ww.secX = 9; ww.secY = 4; ww.secType = Sec.push;
		ww.pushableList = [{a:9, b:4}];
		wmap("//...........##");
		wmap("//...........##");
		wmap("//..g..........");
		wmap("//.............");
		wmap("//.......=.....");
		wmap("//..g..........");
		wmap("bb.............");
		wmap("bb........g....");
		wmap("bb.............");
		wmap("bb..g..........");
		wmap("bb...........##");
		wmap("bb...........##");
	}
	
	if(xxx == 0 && yyy == 4){
		biome(Zone.grave);
		ww.secBlock = imgGraveDirt; ww.secX = 8; ww.secY = 6; ww.secType = Sec.push;
		ww.pushableList = [{a:8, b:6}];
		wmap("bb...........##");
		wmap("bb............#");
		wmap("bb..b.....b...#");
		wmap("/b........b...#");
		wmap("//............#");
		wmap("....b........g#");
		wmap("....g...=....g#");
		wmap("//............#");
		wmap("//............#");
		wmap("//..g...b..g..#");
		wmap("//............#");
		wmap("//...........##");
		if(pc.x > 64){
			ww.bmap[0, 5] = imgVaultDoor; ww.bmap[0, 6] = imgBlank;
		}
	}
	
	if(xxx == 0 && yyy == 5){
		biome(Zone.grave);
		//ww.mobList = [1, objMobGhostBoss];
		ww.canLion = false; ww.noMobs = true;
		wmap("//...........##");
		wmap("//.........AA##");
		wmap("//........AAAA#");
		wmap("/..........g.A#");
		wmap("/.............#");
		wmap("/.............#");
		wmap("/.....G ......#");
		wmap("/.....= ......#");
		wmap("/.............#");
		wmap("/.............#");
		wmap("//...........##");
		wmap("/////////////##");
	}
	
	
	
	
	
	
	
	if(xxx == 1 && yyy == 0){
		biome(Zone.grave);
		wmap("##///////////~~");
		wmap("##////=//////~~");
		wmap("...//...///..~~");
		wmap("...///...//..~~");
		wmap("...////..//...~");
		wmap("...///////....~");
		wmap("....////#.....~");
		wmap("..............~");
		wmap("............~~~");
		wmap(".....~~~~~~~~~~");
		wmap("~~~~~~~~~~~~~~~");
		wmap("~#...........##");
	}
	
	if(xxx == 1 && yyy == 1){
		biome(Zone.grave);
		ww.secBlock = imgGraveDirt; ww.secX = 6; ww.secY = 4; ww.secType = Sec.push;
		ww.pushableList = [{a:6, b:4}];
		wmap("##...........##");
		wmap("##...........##");
		wmap("...........g...");
		wmap("..g............");
		wmap("......=gg..g...");
		wmap("...............");
		wmap("..g............");
		wmap("......g....g...");
		wmap("...............");
		wmap("....g...g......");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 1 && yyy == 2){
		biome(Zone.grave);
		ww.secBlock = imgGraveDirt; ww.secX = 9; ww.secY = 3; ww.secType = Sec.push;
		ww.pushableList = [{a:9, b:3}];
		wmap("##...........##");
		wmap("##...........##");
		wmap("...............");
		wmap("...g..g..=g....");
		wmap("...............");
		wmap("...............");
		wmap("....g...g...g..");
		wmap("...............");
		wmap("..g..g..g..g...");
		wmap("...............");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 1 && yyy == 3){
		biome(Zone.grave);
		ww.secBlock = imgBushRedGrave; ww.secX = 7; ww.secY = 9; ww.secType = Sec.burn;
		wmap("##...........##");
		wmap("##...........##");
		wmap("..............#");
		wmap("......g...gg..#");
		wmap("..............#");
		wmap("....g....g....#");
		wmap("..............#");
		wmap("...........g..#");
		wmap("..g....g......#");
		wmap(".......=......#");
		wmap("##...........##");
		wmap("###############");
	}
	
	
	if(xxx == 2 && yyy == 1){
		biome(Zone.grave);
		ww.secBlock = imgGraveDirt; ww.secX = 8; ww.secY = 3; ww.secType = Sec.push;
		ww.pushableList = [{a:8, b:3}];
		wmap("###############");
		wmap("##...........##");
		wmap("..............#");
		wmap("...g....=.....#");
		wmap("..............#");
		wmap("...........g..#");
		wmap(".....g........#");
		wmap("..............#");
		wmap("..........g...#");
		wmap("......g.......#");
		wmap("##...........##");
		wmap("##...........##");
	}
	
	if(xxx == 2 && yyy == 2){
		biome(Zone.grave);
		ww.secBlock = imgGraveDirt; ww.secX = 10; ww.secY = 7; ww.secType = Sec.push;
		ww.pushableList = [{a:10, b:7}];
		wmap("##...........##");
		wmap("##...........##");
		wmap("........g.....#");
		wmap("..............#");
		wmap("...g..g....g..#");
		wmap("..............#");
		wmap("..............#");
		wmap("..g...gg..=...#");
		wmap("..............#");
		wmap("........g.....#");
		wmap("##...........##");
		wmap("####...########");
	}
}