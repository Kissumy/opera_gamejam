/// @description adc
with(other)
{
	if ystart>416
	{
		
		obj_player2.naves[pos][1]=0;
	}
	else
	{
		obj_player1.naves[pos][1]=0;
	}
	instance_destroy();
}
if (global.music) audio_play_sound(kamiexplode,10,0);
instance_destroy();