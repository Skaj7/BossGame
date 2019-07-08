/// @description 8D movement
hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);

//diagonal movement
if(hInput != 0 || vInput != 0){
	dir = point_direction(0,0,hInput,vInput);
	hInput = lengthdir_x(spd, dir);
	vInput = lengthdir_y(spd, dir);
	
	x += hInput;
	y += vInput;
	
	image_xscale = 1;
	//set sprite
	switch(dir){
		case 0: sprite_index = spr_r; break;
		case 45: sprite_index = spr_ur; break;
		case 90: sprite_index = spr_u; break;
		case 135: sprite_index = spr_ur; image_xscale = -1; break;
		case 180: sprite_index = spr_r; image_xscale = -1; break;
		case 225: sprite_index = spr_dr; image_xscale = -1; break;
		case 270: sprite_index = spr_d; break;
		case 315: sprite_index = spr_dr; break;
	}		
} else {
	image_index = 0;
}