scr_input();

scr_new_state();

// if no movement
if(state != playerState.defence) return;

delay = 0.8;

dir = point_direction(0,0,hInput,vInput);
moveX = lengthdir_x(spd * delay, dir);
moveY = lengthdir_y(spd * delay, dir);

scr_collision();
	
x += moveX;
y += moveY;
	
scr_sprite_update();