/// @description top
with(other)
{
	instance_destroy();
	if ystart>416
	{
		
		obj_player2.naves[pos][0]=0;
	}
	else
	{
		obj_player1.naves[pos][0]=0;
	}
}
if (global.music) audio_play_sound(kamiexplode,10,0);
instance_destroy();