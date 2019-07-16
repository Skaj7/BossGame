/// @description draw
if (transitionTime < transitionLength) transitionTime += 1/room_speed;

shader_set(sh_transition);

shader_set_uniform_f(uniTime, transitionTime/transitionLength);

draw_sprite_stretched(spr_trans, 0, camera_get_view_x(camId), camera_get_view_y(camId), camera_get_view_width(camId), camera_get_view_height(camId));

shader_reset();