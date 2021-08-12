/// @description municion

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_texto);
draw_text(32,224, "PLAYER 1");
draw_text(32,256, "NEXT:");
if global.municion1[0] == obj_adc a= spr_adc;
else if global.municion1[0] == obj_top a= spr_top;
else a= spr_kamikaze;
draw_sprite_stretched(a, 0, 32,288,48,32);

draw_text(32,320, "SAVE:");
if global.municion1[1] == obj_adc a= spr_adc;
else if global.municion1[1] == obj_top a= spr_top;
else a= spr_kamikaze;
draw_sprite_stretched(a, 0, 32,352,48,32);

if !global.pvp 
{
	draw_text(32,384, "SCORE:");
	draw_text(32,416, string(global.point));
	draw_text(32,448, "HI-SCORE:");
	draw_text(32,480, string(global.hiscore));
}


draw_text(864,224, "PLAYER 2");
draw_text(864,256, "NEXT:");
if global.municion2[0] == obj_adc 
{
	a= spr_adc; 
	z=3;
}
else if global.municion2[0] == obj_top 
{
	a= spr_top;
	z=1;
}
else 
{
	a= spr_kamikaze;
	z=1;
}
draw_sprite_stretched(a, z, 864,288,48,32);

draw_text(864,320, "SAVE:");
if global.municion2[1] == obj_adc 
{
	a= spr_adc; 
	z=2;
}
else if global.municion2[1] == obj_top 
{
	a= spr_top;
	z=1;
}
else 
{
	a= spr_kamikaze;
	z=1;
}
draw_sprite_stretched(a, z, 864,352,48,32);

draw_text(864,400, string(obj_player2.c1));
draw_text(864,432, string(obj_player2.c2));
draw_text(864,464, string(obj_player2.c3));
draw_text(864,496, string(obj_player2.xfin));
draw_text(864,528, string(obj_player2.x));

draw_sprite_stretched(spr_shield, obj_base1.escudo, obj_base1.x,obj_base1.y,64,64);
draw_sprite_stretched(spr_shield, obj_base2.escudo, obj_base2.x,obj_base2.y,64,64);