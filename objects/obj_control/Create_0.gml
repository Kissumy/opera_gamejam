/// @description crear variables

randomize();

for (i=0;i<2;i++)
{
	global.municion1[i]=choose(obj_adc,obj_kamikaze,obj_top);
	global.municion2[i]=choose(obj_adc,obj_kamikaze,obj_top);
}