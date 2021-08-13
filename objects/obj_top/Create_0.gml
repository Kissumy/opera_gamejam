/// @description  configurar nave top

//iniciar sprite




//variable para la velocidad
aux=true;
vida = 4;
if ystart>416
{
	yfin=ystart-64;
	
	if (global.music) audio_play_sound(humanrangehit,10,0);
	pos = obj_player2.pos;
	sprite_index = spr_top;
	image_speed = 0;
	image_index = 0;
}
else
{
	yfin=ystart+64;
	if (global.music) audio_play_sound(snd_top,10,0);
	pos = obj_player1.pos;
}
TweenEasyMove(x,y,x,yfin,0,2*room_speed/global.modi, EaseLinear);
direction = 270;
