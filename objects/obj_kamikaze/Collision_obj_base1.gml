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
}
if (global.music) audio_play_sound(kamiexplode,10,0);
instance_destroy();