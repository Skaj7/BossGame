/// @description vars
var w = camera_get_view_width(view_camera[0]);
var h = camera_get_view_height(view_camera[0]);
tilemap = layer_tilemap_get_id("WaterTiles");
water_surf = surface_create(w*2, h*2);

//water shader
uniTime = shader_get_uniform(sh_water, "time");
uniTexel = shader_get_uniform(sh_water, "texel");
