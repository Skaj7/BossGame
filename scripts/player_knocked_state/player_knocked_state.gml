 
if(pixelsKnocked <= 0){
	pixelsKnocked = 0;
	state = playerState.idle;	
}
localSpeed = spd * 0.8;
pixelsKnocked -= localSpeed;
dir = point_direction(0,0,hInput,vInput);
moveX = lengthdir_x(localSpeed, hitAngle);
moveY = lengthdir_y(localSpeed, hitAngle);

scr_collision();
if(moveX == 0 && moveY == 0){
	pixelsKnocked = 0;
	state = playerState.idle;	
}
	
x += moveX;
y += moveY;

scr_sprite_update();