/// @description  configurar nave top

//iniciar sprite
sprite_index = spr_adc;
image_speed = 0;
image_index = 0;



//variable para la velocidad
v = 4*global.modi;
aux=true;
vida = 9;
if ystart>416
{
	v*=-1;
	yfin=ystart-192;
	if (global.music) audio_play_sound(humanadchit,10,0);
	pos = obj_player2.pos;
}
else
{
	yfin=ystart+192;
	if (global.music) audio_play_sound(snd_adc,10,0);
	pos = obj_player1.pos;
}
direction = 270;
speed = v