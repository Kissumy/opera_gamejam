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
if ystart>416
{	
	if vida==8
	{
		image_index = 3;
	}
	else if vida==7
	{
		image_index = 4;
	}
	else if vida==6
	{
		image_index = 5;
	}
	else if vida==5
	{
		image_index = 6;
	}
	else if vida==4
	{
		image_index = 7;
	}
	else if vida==3
	{
		image_index = 8;
	}
}
else
{
	if vida==3
	{
		image_index = 1;
	}
}

