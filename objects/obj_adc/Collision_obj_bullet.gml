vida--;
with(other)
{
	instance_destroy();
}
if (global.music) audio_play_sound(basehit,10,0);
if(!vida)
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
else if vida==3
{
	image_index = 1;
}
