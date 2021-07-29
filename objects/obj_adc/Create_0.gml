/// @description  configurar nave top

//iniciar sprite
sprite_index = spr_adc;
image_speed = 0;
image_index = 0;



//variable para la velocidad
v = 4;
aux=true;
vida = 8;
if ystart>416
{
	v*=-1;
	yfin=ystart-192;
	audio_play_sound(humanadchit,10,0);
}
else
{
	yfin=ystart+192;
	audio_play_sound(snd_adc,10,0);
}
direction = 270;
speed = v