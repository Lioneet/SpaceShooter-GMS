/// @description Insert description here
// You can write your code in this editor

//Desenhando um texto em mim
draw_self();

draw_set_color(c_black);
//Definindo a fonte
draw_set_font(fnt_botoes);

draw_set_halign(1);
draw_set_valign(1);
draw_text(x, y, texto);

draw_set_color(-1);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);