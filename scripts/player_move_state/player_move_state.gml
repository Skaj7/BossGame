dir = point_direction(0,0,hInput,vInput);
moveX = lengthdir_x(spd, dir);
moveY = lengthdir_y(spd, dir);
	
scr_collision();
	
x += moveX;
y += moveY;
	
scr_sprite_update();
show_debug_message("in move");
state = playerState.calculate;