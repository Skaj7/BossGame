image_xscale = 1;
//set sprite
switch(dir){
	case 0: sprite_index = spr_r; break;
	case 45: sprite_index = spr_ur; break;
	case 90: sprite_index = spr_u; break;
	case 135: sprite_index = spr_ur; image_xscale = -1; break;
	case 180: sprite_index = spr_r; image_xscale = -1; break;
	case 225: sprite_index = spr_dr; image_xscale = -1; break;
	case 270: sprite_index = spr_d; break;
	case 315: sprite_index = spr_dr; break;
}		