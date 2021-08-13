/// @description  configurar nave top

//iniciar sprite




//variable para la velocidad
aux=true;
vida = 9;
if ystart>416
{
	yfin=ystart-192;
	if (global.music) audio_play_sound(humanadchit,10,0);
	pos = obj_player2.pos;
	sprite_index = spr_adch;
	image_speed = 4;
	image_index = 0;
}
else
{
	yfin=ystart+192;
	if (global.music) audio_play_sound(snd_adc,10,0);
	pos = obj_player1.pos;
	sprite_index = spr_adc;
	image_speed = 4;
	image_index = 0;
}
TweenEasyMove(x,y,x,yfin,0,room_speed/global.modi, EaseInOutQuart);
direction = 270;