/// @description crear variables

randomize();

for (i=0;i<2;i++)
{
	global.municion1[i]=choose(obj_adc,obj_kamikaze,obj_top);
	global.municion2[i]=choose(obj_adc,obj_kamikaze,obj_top);
}

if (global.music) audio_play_sound(snd_music,5,true);
alarm[0]=room_speed*1;
alarm[1]=room_speed*30;