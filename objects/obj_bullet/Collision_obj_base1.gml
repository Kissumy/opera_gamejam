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
	
}
with(obj_base2)
{
	if escudo<4
	{
		escudo++;
	}
}
instance_destroy();