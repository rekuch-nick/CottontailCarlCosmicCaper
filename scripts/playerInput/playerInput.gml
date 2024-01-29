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
	
	
	
	charPressed = "";
	if(keyboard_check_pressed(ord("1"))){ charPressed = "1"; }
	if(keyboard_check_pressed(ord("2"))){ charPressed = "2"; }
	if(keyboard_check_pressed(ord("3"))){ charPressed = "3"; }
	if(keyboard_check_pressed(ord("4"))){ charPressed = "4"; }
	if(keyboard_check_pressed(ord("5"))){ charPressed = "5"; }
	if(keyboard_check_pressed(ord("6"))){ charPressed = "6"; }
	if(keyboard_check_pressed(ord("7"))){ charPressed = "7"; }
	if(keyboard_check_pressed(ord("8"))){ charPressed = "8"; }
	if(keyboard_check_pressed(ord("9"))){ charPressed = "9"; }
	if(keyboard_check_pressed(ord("0"))){ charPressed = "0"; }
	
	zIn = 0;
	if(mouse_wheel_down()){ zIn ++; }
	if(mouse_wheel_up()){ zIn --; }
	
	
	bagPressed = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape);
	
	potPressed = keyboard_check_pressed(ord("Q"));
	
	
	surfJumpPressed = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || mouse_check_button_pressed(mb_left);
	surfJumpHeld = keyboard_check(vk_up) || keyboard_check(ord("W")) || mouse_check_button(mb_left);

}