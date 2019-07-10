gun.image_xscale = 1;
gun.image_yscale = 1;
gun.visible = true;
gun.image_angle = 0; 
gun.image_index = 0;

//before player
gun.depth = depth - 1;

//visible = false;
//switch gun position
switch(dir){
	case 0:   gun.xOffset = 5; gun.yOffset = 3; break;
	case 45:  gun.xOffset = 4; gun.yOffset = 1.5; gun.depth = depth + 1; gun.image_angle = dir; break;
	case 90:  gun.xOffset = 4; gun.yOffset = 0; gun.depth = depth + 1; gun.image_angle = dir; gun.image_yscale = -1; break;
	case 135: gun.visible = true;/*false;*/ gun.xOffset = 3; gun.yOffset = 3; break;
	case 180: gun.xOffset = -4; gun.yOffset = 2; gun.image_xscale = -1; gun.depth = depth + 1; break;
	case 225: gun.xOffset = 3; gun.yOffset = 3; break;
	case 270: gun.xOffset = -7; gun.yOffset = 4; gun.image_index = 1; break;
	case 315: gun.xOffset = 3; gun.yOffset = 3; break;
}