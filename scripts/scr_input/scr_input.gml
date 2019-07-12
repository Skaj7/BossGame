hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

mouseDir = point_direction(x,y,mouse_x, mouse_y);

defenceFlag = mouse_check_button(mb_right);
if(defenceFlag) {
	defenceFlag = !mouse_check_button_released(mb_right);
	//remove gun stance
	armedFlag = false;
}

if(keyboard_check_released(vk_tab)) {
	armedFlag = !armedFlag;
	//remove defence stance 
	defenceFlag = false;
}


//move
gun.visible = armedFlag;