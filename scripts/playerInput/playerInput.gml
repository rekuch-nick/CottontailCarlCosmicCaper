function playerInput(){
	
	
	
	if(icd > 0){ icd --; }
	
	xIn = 0;
	yIn = 0;
	
	if(keyboard_check(vk_left) || keyboard_check(ord("A")) ){
		xIn --;
	}
	
	if(keyboard_check(vk_right) || keyboard_check(ord("D")) ){
		xIn ++;
	}
	
	if(keyboard_check(vk_down) || keyboard_check(ord("S")) ){
		yIn ++;
	}
	
	if(keyboard_check(vk_up) || keyboard_check(ord("W")) ){
		yIn --;
	}
	
	
	
	
	mouseLHold = mouse_check_button(mb_left);
	mouseRHold = mouse_check_button(mb_right);
	mouseMid = 0;
	if(mouse_wheel_up()){ mouseMid --; }
	if(mouse_wheel_down()){ mouseMid ++; }
	
	
	
	
	
	
	
	
	
	

}