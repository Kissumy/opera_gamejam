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
}