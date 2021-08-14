/// @description crear variables

if room == rm_pvp
{
	randomize();

	for (i=0;i<2;i++)
	{
		global.municion1[i]=choose(obj_adc,obj_kamikaze,obj_top);
		global.municion2[i]=choose(obj_adc,obj_kamikaze,obj_top);
	}

	if (global.music) audio_play_sound(snd_music,5,true);
	if !global.pvp 
	{
		if file_exists("score.ini")
		{
			ini_open("score.ini");
			global.hiscore = ini_read_real("score","hiscore",0);
			ini_close();
		}
		else
		{
			global.hiscore = 0;
		}
		alarm[0]=room_speed*1;
	}
	alarm[1]=room_speed*30;
	global.anim_vel=0.35;
}