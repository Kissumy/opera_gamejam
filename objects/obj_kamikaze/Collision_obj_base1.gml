/// @description base
with(other)
{
	if escudo ==0
	{
		vida--;
		
	}
	else if escudo ==1
	{
		escudo-=1;
	}
	else 
	{
		escudo-=2;
	}
	if vida==0
	{
		audio_stop_all();
		if !global.pvp && (global.point>global.hiscore) 
		{
			ini_open("score.ini");
			ini_write_real("score","hiscore",global.point)
			global.hiscore=global.point;
		}
		room_goto(rm_game_over);
	}
}
if (global.music) audio_play_sound(kamiexplode,10,0);
instance_destroy();