/// @desc firing delay
event_inherited();

firingDelay -= 1;
recoil = max(0,recoil-1);
if(mouse_check_button(mb_left) && firingDelay < 0){
	recoil = 1;
	firingDelay = 10;
	with (instance_create_layer(x,y,"bullets", oBullet)){
		speed = 5;
		direction = other.mouse_angle + random_range(-3,3);
		image_angle = direction;
	}
	with(oPlayer){
		hitAngle = other.mouse_angle+180;
		pixelsKnocked = 5;
		state = playerState.knocked;
	}
}
