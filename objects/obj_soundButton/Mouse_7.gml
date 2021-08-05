/// @description Insert description here
// You can write your code in this editor
if image_index%2==0
{
	image_index+=1;
	global.music=false;
	audio_stop_all();
}
else
{
	image_index-=1;
	global.music=true;
	if !(room_get_name(room)=="rm_main")
	{
		audio_play_sound(snd_music,5,true);
	}
}