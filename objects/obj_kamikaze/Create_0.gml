/// @description  configurar nave top

//iniciar sprite
sprite_index = spr_kamikaze;
image_speed = 0;
image_index = 0;

audio_play_sound(snd_kamikaze,10,0);

//variable para la velocidad
v = 4;
vida = 4;
if ystart>416
{
	v*=-1;
	yfin=ystart-544;
}
else
{
	yfin=ystart+544;
}
direction = 270;
speed = v;