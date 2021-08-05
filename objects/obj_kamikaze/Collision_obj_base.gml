/// @description base
with(other)
{
	vida -=1;
}
if (global.music) audio_play_sound(kamiexplode,10,0);
instance_destroy();