/// @description movimiento y sprite

//movimiento del pj
if x==xfin
{
	speed = 0;
		if keyboard_check(ord("D")) && x<xstart+384
	{
		direction = 0;
		speed = v;
		xfin = x+192;
		pos+=1;
		
	}
	if keyboard_check(ord("A")) && x>xstart
	{
		direction = 0;
		speed = -v;
		xfin = x-192;
		pos-=1;
	}
	if keyboard_check(ord("S")) && !cd
	{
		if !((global.municion1[0]==obj_adc && naves[pos][1]==1)||(global.municion1[0]==obj_top && naves[pos][0]==1))
		{
			if global.municion1[0]==obj_adc naves[pos][1]=1;
			else if global.municion1[0]==obj_top naves[pos][0]=1;
			instance_create_layer(x,y+64,"Instances",global.municion1[0]);
			global.municion1[0]=choose(obj_adc,obj_kamikaze,obj_top);
			cd=true;
			alarm[0]=room_speed/global.modi;
		}
	}
	if keyboard_check(ord("W")) && !scd
	{
		aux=global.municion1[0];
		global.municion1[0]=global.municion1[1];
		global.municion1[1]=aux;
		scd=true;
		alarm[1]=room_speed/global.modi;
	}
}

