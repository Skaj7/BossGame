/// @description vars
state = playerState.idle;
states_array[playerState.idle] = player_idle_state;
states_array[playerState.move] = player_move_state;
states_array[playerState.defence] = player_defence_state;
states_array[playerState.idleDefence] = player_idleDefence_state;

spd = 1;
image_speed = 0.5;

hInput = 0;
vInput = 0;
moveX = 0;
moveY = 0;
defenceFlag = 0;