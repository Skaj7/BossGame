/// @description vars
state = playerState.calculate;
states_array[playerState.idle] = player_idle_state;
states_array[playerState.move] = player_move_state;
states_array[playerState.calculate] = player_calculate_state;

spd = 1;
image_speed = 0.5;

hInput = 0;
vInput = 0;
moveX = 0;
moveY = 0;