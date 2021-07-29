/// @description movimiento y sprite

//movimiento del pj
if x==xfin
{
	speed = 0;
		if keyboard_check(vk_right) && place_free(x+1,y)
	{
		direction = 0;
		speed = v;
		xfin = x+192;
	}
	if keyboard_check(vk_left) && place_free(x-1,y)
	{
		direction = 0;
		speed = -v;
		xfin = x-192;
	}
	if keyboard_check(vk_down)
	{
		instance_create_layer(x,y-64,"Instances",global.municion2[0]);
		global.municion2[0]=choose(obj_adc,obj_kamikaze,obj_top);

	}
	if keyboard_check(vk_up)
	{
		
	}
}
