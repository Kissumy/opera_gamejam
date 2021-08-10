/// @description base
with(other)
{
	if escudo ==0
	{
		vida--;
	}
	else if escudo ==1
	{
		escudo-=1;
	}
	else 
	{
		escudo-=2;
	}
	if vida==0
	{
		audio_stop_all();
		room_goto(rm_main);
	}
}
if (global.music) audio_play_sound(kamiexplode,10,0);
instance_destroy();