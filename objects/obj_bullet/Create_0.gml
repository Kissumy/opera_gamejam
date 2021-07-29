/// @description  balas

//iniciar sprite
sprite_index = spr_bullet;
image_speed = 0;
image_index = 0;



//variable para la velocidad
v = 4;
if ystart>416
{
	v*=-1;
	yfin=ystart-224;
}
else
{
	yfin=ystart+224;
}
direction = 270;
speed = v