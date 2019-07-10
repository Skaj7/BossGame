scr_input();

scr_new_state();

// if no movement
if(state != playerState.move) return;

dir = point_direction(0,0,hInput,vInput);
moveX = lengthdir_x(spd, dir);
moveY = lengthdir_y(spd, dir);

scr_collision();
	
x += moveX;
y += moveY;

if(armedFlag) scr_gun_position();
	
scr_sprite_update();