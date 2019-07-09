var s_r = spr_r;
var s_ur = spr_ur;
var s_u = spr_u;
var s_dr = spr_dr;
var s_d = spr_d;

if (state == playerState.defence){
	s_r = spr_r_d;
	s_ur = spr_ur_d;
	s_u = spr_u_d;
	s_dr = spr_dr_d;
	s_d = spr_d_d;
}

image_xscale = 1;
//set sprite
switch(dir){
	case 0: sprite_index = s_r; break;
	case 45: sprite_index = s_ur; break;
	case 90: sprite_index = s_u; break;
	case 135: sprite_index = s_ur; image_xscale = -1; break;
	case 180: sprite_index = s_r; image_xscale = -1; break;
	case 225: sprite_index = s_dr; image_xscale = -1; break;
	case 270: sprite_index = s_d; break;
	case 315: sprite_index = s_dr; break;
}		