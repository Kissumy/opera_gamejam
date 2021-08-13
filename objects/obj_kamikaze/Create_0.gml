/// @description  configurar nave top

//iniciar sprite




//variable para la velocidad
vida = 4;
if ystart>416
{
	yfin=0;
	if (global.music) audio_play_sound(humankamihit,10,0);
	sprite_index = spr_kamikazeh;
	image_speed = global.anim_vel;
	image_index = 0;
}
else
{
	yfin=832;
	if (global.music) audio_play_sound(snd_kamikaze,10,0);
	sprite_index = spr_kamikaze;
	image_speed = 0;
	image_index = 0;
}
TweenEasyMove(x,y,x,yfin,0,3.5*room_speed/global.modi, EaseLinear);
direction = 270;
