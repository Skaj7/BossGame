var s_r = spr_r;
var s_ur = spr_ur;
var s_u = spr_u;
var s_dr = spr_dr;
var s_d = spr_d;

var s_lu = spr_ur;
var s_l = spr_r;
var s_ld = spr_dr;

if (state == playerState.defence){
	s_r = spr_r_d;
	s_ur = spr_ur_d;
	s_u = spr_u_d;
	s_dr = spr_dr_d;
	s_d = spr_d_d;
	
	s_lu = spr_ur_d;
	s_l = spr_r_d;
	s_ld = spr_dr_d;
}

if (armedFlag){
	s_r = spr_r_gun;
	s_ur = spr_ur_gun;
	s_u = spr_u_gun;
	s_dr = spr_dr_gun;
	s_d = spr_d_gun;
	
	s_lu = spr_lu_gun;
	s_l = spr_l_gun;
	s_ld = spr_dl_gun;
}

image_xscale = 1;
//set sprite
if(0 <= mouseDir && mouseDir <= 22.5){ 
	sprite_index = s_r;
} else if(22.5 <= mouseDir && mouseDir <= 67.5){
	sprite_index = s_ur;
} else if(67.5 <= mouseDir && mouseDir <= 112.5){
	sprite_index = s_u;
} else if(112.5 <= mouseDir && mouseDir <= 157.5){
	sprite_index = s_lu; if(!armedFlag) image_xscale = -1;
} else if(157.5 <= mouseDir && mouseDir <= 202.5){
	sprite_index = s_l; if(!armedFlag) image_xscale = -1;
} else if(202.5 <= mouseDir && mouseDir <= 247.5){
	sprite_index = s_ld; if(!armedFlag) image_xscale = -1;
} else if(247.5 <= mouseDir && mouseDir <= 292.5){
	sprite_index = s_d;
} else if(292.5 <= mouseDir && mouseDir <= 337.5){
	sprite_index = s_dr;
} else if(337.5 <= mouseDir && mouseDir <= 360){
	sprite_index = s_r;
}		