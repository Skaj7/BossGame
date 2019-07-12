scr_input();

scr_new_state();
if(state != playerState.idleDefence) {
	sprite_index = spr_d;
	return;
}

sprite_index = spr_d_d2;
image_index = 0;

scr_sprite_update();
//defence info

