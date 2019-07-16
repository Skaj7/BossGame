/// @description 
//Set shader
shader_set(sh_water);

//Set surface
surface_set_target(water_surf);

//Draw tilemap
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
draw_tilemap(tilemap, -cx, -cy);

//Draw reflected player sprite
//Get player y offset for reflection
var yoff = (oPlayer.sprite_height - oPlayer.sprite_yoffset)*2;

//Set blendmode
gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_src_alpha);

//Draw reflection
draw_sprite_ext(oPlayer.sprite_index, oPlayer.image_index, oPlayer.x - cx, (oPlayer.y+yoff) - cy, oPlayer.image_xscale, -oPlayer.image_yscale, 0, -1, 0.6);

//shader
shader_set_uniform_f(uniTime, current_time);
var tex = sprite_get_texture(oPlayer.sprite_index, oPlayer.image_index);
shader_set_uniform_f(uniTexel, texture_get_texel_width(tex), texture_get_texel_height(tex));


//Reset blendmode
gpu_set_blendmode(bm_normal);

//Reset surface
surface_reset_target();

//Draw surface in game
draw_surface(water_surf, cx, cy);

shader_reset();

/// @description test

//draw_self();

