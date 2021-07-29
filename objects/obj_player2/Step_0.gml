/// @description movimiento y sprite

//movimiento del pj
if keyboard_check() && place_free(x+1,y) && x==xfin
{
	direction = 0;
	speed = v;
	xfin = x+192;
}
if keyboard_check(ord("A")) && place_free(x+1,y) && x==xfin
{
	direction = 0;
	speed = -v;
	xfin = x-192;
}
if x==xfin
{
	speed = 0;
}