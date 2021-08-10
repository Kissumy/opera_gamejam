/// @description  configurar nave top

//iniciar sprite
sprite_index = spr_kamikaze;
image_speed = 0;
image_index = 0;



//variable para la velocidad
v = 4*global.modi;
vida = 4;
if ystart>416
{
	v*=-1;
	yfin=ystart-544;
	if (global.music) audio_play_sound(humankamihit,10,0);
}
else
{
	yfin=ystart+544;
	if (global.music) audio_play_sound(snd_kamikaze,10,0);
}
direction = 270;
speed = v;