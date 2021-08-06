/// @description movimiento y sprite

//movimiento del pj
if x==xfin
{
	speed = 0;
	if keyboard_check(vk_right) && x<xstart+384
	{
		direction = 0;
		speed = v;
		xfin = x+192;
		pos+=1;
	}
	if keyboard_check(vk_left) && x>xstart
	{
		direction = 0;
		speed = -v;
		xfin = x-192;
		pos+=1;
	}
	if keyboard_check(vk_down) && !cd
	{
		if !(global.municion2[0]==obj_adc && naves[pos][1]==1)||(global.municion2[0]==obj_top && naves[pos][0]==1)
		{
			if global.municion2[0]==obj_adc naves[pos][1]=1;
			else if global.municion2[0]==obj_top naves[pos][0]=1;
			instance_create_layer(x,y-64,"Instances",global.municion2[0]);
			global.municion2[0]=choose(obj_adc,obj_kamikaze,obj_top);
			cd=true;
			alarm[0]=room_speed*1;
		}
	}
	if keyboard_check(vk_up) && !scd
	{
		aux=global.municion2[0];
		global.municion2[0]=global.municion2[1];
		global.municion2[1]=aux;
		scd=true;
		alarm[1]=room_speed*1;
	}
}
