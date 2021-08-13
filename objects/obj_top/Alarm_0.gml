/// @description disparo
if ystart>416
{
	yaux=y-32;
}
else
{
	yaux=y+64;
}

instance_create_layer(x+32,yaux,"Instances",obj_bullet);

alarm[0] = room_speed/global.modi;


