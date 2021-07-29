/// @description municion

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_texto);
draw_text(36,16, "SCORE: "+string(global.puntos));


draw_text(room_width/2, 16, "VIDAS: ");