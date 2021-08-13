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
		sprite_index = spr_adch5;
	}
	else if vida==7
	{
		sprite_index = spr_adch4;
	}
	else if vida==6
	{
		sprite_index = spr_adch3;
	}
	else if vida==5
	{
		sprite_index = spr_adch2;
	}
	else if vida==4
	{
		sprite_index = spr_adch1;
	}
	else if vida==3
	{
		sprite_index = spr_adch;
	}
}
else
{
	if vida==3
	{
		sprite_index = spr_adc_shieldless;
	}
}

