/// @description Insert description here
// You can write your code in this editor
audio_stop_all();

if room_get_name(room) == rm_pvp
{
	if !global.pvp && (global.point>global.hiscore) 
	{
		ini_open("score.ini");
		ini_write_real("score","hiscore",global.point);
		global.hiscore=global.point;
	}
	room_goto(rm_game_over);
}
else room_goto(rm_main);

