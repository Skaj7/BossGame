 
if(pixelsKnocked <= 0){
	pixelsKnocked = 0;
	state = playerState.idle;	
}
pixelsKnocked -= spd;
dir = point_direction(0,0,hInput,vInput);
moveX = lengthdir_x(spd, hitAngle);
moveY = lengthdir_y(spd, hitAngle);

scr_collision();
if(moveX == 0 && moveY == 0){
	pixelsKnocked = 0;
	state = playerState.idle;	
}
	
x += moveX;
y += moveY;

scr_sprite_update();