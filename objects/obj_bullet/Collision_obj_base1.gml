/// @description Insert description here
// You can write your code in this editor
if (global.music) audio_play_sound(basehit,10,0);

with(other)
{
	if escudo ==0
	{
		vida--;
	}
	else
	{
		escudo--;
	}
	if vida==0
	{
		audio_stop_all();
		room_goto(rm_main);
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