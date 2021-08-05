vida--;
with(other)
{
	instance_destroy();
}
if (global.music) audio_play_sound(basehit,10,0);
if(!vida)
{
	instance_destroy();
}