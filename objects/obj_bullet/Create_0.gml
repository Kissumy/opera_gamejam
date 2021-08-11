/// @description  balas

//iniciar sprite
sprite_index = spr_bullet;
image_speed = 0;
image_index = 0;



//variable para la velocidad

if ystart>540
{
	yfin=ystart-544;
	image_index = 1;
}
else if ystart>416
{
	yfin=ystart-544;
	image_index = 2;
}
else
{
	yfin=ystart+544;
}
TweenEasyMove(x,y,x,yfin,0,2*room_speed/global.modi, EaseLinear);
direction = 270;
