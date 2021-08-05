/// @description Insert description here
// You can write your code in this editor
if ((!audio_is_playing(snd_music)) && global.music)
{
	audio_play_sound(snd_music,5,true);
}
