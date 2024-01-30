function playerStepBirdScene(){
	
	pc.birdSceneTime ++;
	
	if(pc.birdSceneStep == 1){
		
		if(pc.birdSceneTime % 20 == 0){
			instance_create_depth(pc.x, pc.y, ww.layerE, objEggUp);
			
			var xx = floor(pc.birdSceneTime / 20) * 16;
			instance_create_depth(10 * 64 + xx, 3 * 64, ww.layerE, objEggWob);
			
		}
		
		
			
		if(pc.birdSceneTime / 20 >= 11){
			pc.birdSceneTime = 0;
			pc.birdSceneStep = 2;
		}
		
	}
	
	
	if(pc.birdSceneStep == 2){
		if(irandom_range(0, 99) < pc.birdSceneTime){
			with(objEggWob){ image_angle += choose(-4, 0, 4); }
		}
		if(pc.birdSceneTime > 150){	
			with(objEggWob){ 
				if(irandom_range(0, 99) < 10){
					y --;
				}
			}
		}
		
		if(pc.birdSceneTime > 250){	
			with(objEggWob){ 
				if(irandom_range(0, 99) < 20){
					instance_create_depth(x, y, ww.layerE-1, objEggChip);
					image_alpha -= .02;
				}
			}
		}
		
		if(pc.birdSceneTime > 350){
			with(objEggWob){ instance_destroy(); }
			pc.birdSceneStep = 3;
			pc.birdSceneTime = 0;
			var e = instance_create_depth(11 * 64 + 32, 2 * 64 + 32, ww.layerE, objEggWob);
			e.sprite_index = imgEggDark;
			e.image_xscale = 6;
			e.image_yscale = 6;
			e.txtC2 = c_white;
			e.txt = "I'll be out soon,\n\nHold on!";
			for(var b=2; b<10; b++){
				ww.bmap[0, b] = instance_create_depth(0, b * 64, ww.layerB, objBlock);
				ww.bmap[0, b].sprite_index = imgEggShellsBlock;
			}
			for(var a=6; a<9; a++){
				ww.bmap[a, 11] = instance_create_depth(a * 64, 11 * 64, ww.layerB, objBlock);
				ww.bmap[a, 11].sprite_index = imgEggShellsBlock;
			}
			
			pc.birdSceneStep = 4;
			pc.birdSceneTime = 0;
			ww.state = State.play;
			
			instance_create_depth(100, 100, ww.layerM, objMobDarkness);
		}
		
	}
	
	
}