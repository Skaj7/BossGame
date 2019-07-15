/// @description follow player and enemy
var cam_id = view_camera[0];

x += (target.x - x) * scroll_spd;
y += (target.y - y) * scroll_spd;

zoom += (target_zoom - zoom) * zoom_spd;

camera_set_view_size(cam_id, originX * zoom, originY *zoom)
var cam_width = camera_get_view_width(cam_id);
var cam_height = camera_get_view_height(cam_id);
camera_set_view_pos(cam_id, x-cam_width/2, y-cam_height/2);

var mouse_input = mouse_wheel_down()-mouse_wheel_up();
if(mouse_input != 0){
	target_zoom += mouse_input/2;
	target_zoom = clamp(target_zoom, 0.5, 3);
	changeFlag = true;
}