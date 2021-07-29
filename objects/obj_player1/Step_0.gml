/// @description movimiento y sprite

//movimiento del pj
if x==xfin
{
	speed = 0;
		if keyboard_check(ord("D")) && place_free(x+1,y)
	{
		direction = 0;
		speed = v;
		xfin = x+192;
	}
	if keyboard_check(ord("A")) && place_free(x-1,y)
	{
		direction = 0;
		speed = -v;
		xfin = x-192;
	}
	if keyboard_check(ord("S"))
	{
		instance_create_layer(x,y+64,"Instances",global.municion1[i]);
		global.municion1[i]=choose(obj_adc,obj_kamikaze,obj_top);
		
	}
	if keyboard_check(ord("W"))
	{
		i++;
	}
}

