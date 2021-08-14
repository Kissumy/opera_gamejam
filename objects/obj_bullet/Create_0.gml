/// @description  balas

//iniciar sprite




//variable para la velocidad

if ystart>540
{
	yfin=ystart-544;
	sprite_index = spr_bulleth;
	image_speed = global.anim_vel;
	image_index = 0;
}
else if ystart>416
{
	randomize();
	yfin=ystart-544;
	sprite_index = choose(spr_bullethm1,spr_bullethm3,spr_bullethm2);
	image_speed = global.anim_vel;
	image_index = 0;
}
else
{
	sprite_index = spr_bullet;
	image_speed = global.anim_vel;
	image_index = 0;
	yfin=ystart+544;
}
TweenEasyMove(x,y,x,yfin,0,2*room_speed/global.modi, EaseLinear);
direction = 270;
