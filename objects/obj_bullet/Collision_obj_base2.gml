/// @description Insert description here
// You can write your code in this editor
if (global.music) audio_play_sound(basehit,10,0);
if !global.pvp global.point+=10;
with(other)
{
	if escudo ==0
	{
		if global.pvp
		{
			vida--;
			if vida==0
			{
				audio_stop_all();
				room_goto(rm_main);
			}
		}
	}
	else 
	{
		escudo--;
	}
	
}
with(obj_base1)
{
	if escudo<4
	{
		escudo++;
	}
}
instance_destroy();