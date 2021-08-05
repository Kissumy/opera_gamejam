/// @description adc
with(other)
{
	instance_destroy();
}
if (global.music) audio_play_sound(kamiexplode,10,0);
instance_destroy();