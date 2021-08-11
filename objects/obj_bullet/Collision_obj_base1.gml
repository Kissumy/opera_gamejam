/// @description Insert description here
// You can write your code in this editor
if (global.music) audio_play_sound(basehit,10,0);

with(other)
{
	if escudo ==0
	{
		vida--;
		if vida==0
		{
			audio_stop_all();
			if !global.pvp && (global.point>global.hiscore) 
			{
				ini_open("score.ini");
				ini_write_real("score","hiscore",global.point)
			}
			room_goto(rm_main);
		}
	}
	else
	{
		escudo--;
	}
	
}
with(obj_base2)
{
	if escudo<4
	{
		escudo++;
	}
}
instance_destroy();