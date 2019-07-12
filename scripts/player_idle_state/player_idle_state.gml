scr_input();

scr_new_state();
if(state != playerState.idle) return;

image_index = 0;

if(armedFlag) scr_gun_position();
scr_sprite_update();