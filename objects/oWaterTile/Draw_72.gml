/// @description 

if (!surface_exists(water_surf) || oCamera.changeFlag){
    var w = camera_get_view_width(view_camera[0]);
    var h = camera_get_view_height(view_camera[0]);
    water_surf = surface_create(w*2, h*2);
	oCamera.changeFlag = false; 
}
else{
    surface_set_target(water_surf);
    draw_clear_alpha(0, 0);
    surface_reset_target();
}