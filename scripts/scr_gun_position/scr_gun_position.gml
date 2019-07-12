gun.image_xscale = 1;
gun.image_yscale = 1;
gun.visible = true;
gun.sprite_index = spr_gun;
gun.image_angle = 0; 
gun.image_index = 0;

//before player
gun.depth = depth - 1;

//visible = false;
//switch gun position
//set sprite

if(0 <= mouseDir && mouseDir <= 22.5){ 
	gun.xOffset = 5; gun.yOffset = 2; gun.image_index = 2;
} else if(22.5 <= mouseDir && mouseDir <= 67.5){
	gun.xOffset = 4; gun.yOffset = 1.5; gun.depth = depth + 1; gun.image_angle = 45;
} else if(67.5 <= mouseDir && mouseDir <= 112.5){
	gun.xOffset = 4; gun.yOffset = 0; gun.depth = depth + 1; gun.image_angle = 90; gun.image_yscale = -1;
} else if(112.5 <= mouseDir && mouseDir <= 157.5){
	gun.visible = false; gun.xOffset = -1; gun.yOffset = -1;
} else if(157.5 <= mouseDir && mouseDir <= 202.5){
	gun.xOffset = -4; gun.yOffset = 2; gun.image_xscale = -1; gun.depth = depth + 1;
} else if(202.5 <= mouseDir && mouseDir <= 247.5){
	gun.xOffset = -3.5; gun.yOffset = 2; gun.image_angle = 225; gun.image_yscale = -1; 
} else if(247.5 <= mouseDir && mouseDir <= 292.5){
	gun.xOffset = -5; gun.yOffset = 4; gun.image_index = 1;
} else if(292.5 <= mouseDir && mouseDir <= 337.5){
	gun.xOffset = -1; gun.yOffset = 4; gun.image_angle = 315; gun.image_index = 2;
} else if(337.5 <= mouseDir && mouseDir <= 360){
	gun.xOffset = 5; gun.yOffset = 2; gun.image_index = 2;
}

/*
switch(dir){
	case 0:   gun.xOffset = 5; gun.yOffset = 2; gun.image_index = 2; break;
	case 45:  gun.xOffset = 4; gun.yOffset = 1.5; gun.depth = depth + 1; gun.image_angle = dir; break;
	case 90:  gun.xOffset = 4; gun.yOffset = 0; gun.depth = depth + 1; gun.image_angle = dir; gun.image_yscale = -1; break;
	case 135: gun.visible = false; gun.xOffset = -1; gun.yOffset = -1; break;
	case 180: gun.xOffset = -4; gun.yOffset = 2; gun.image_xscale = -1; gun.depth = depth + 1; break;
	case 225: gun.xOffset = -3.5; gun.yOffset = 2; gun.image_angle = dir; gun.image_yscale = -1; break;
	case 270: gun.xOffset = -5; gun.yOffset = 4; gun.image_index = 1; break;
	case 315: gun.xOffset = -1; gun.yOffset = 4; gun.image_angle = dir; gun.image_index = 2; break;
}
/*