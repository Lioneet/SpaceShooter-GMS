/// @description Insert description here
// You can write your code in this editor


//Desenhar a quantidade de naves representando a quantidade de hp que o player possui
//Desenhar uma vida do lado da outra
var _altura_gui = display_get_gui_height();
var multiplicador = 0;
var espaco = 45;
var _margem = 0;
if (player_id == 1) _margem = 1200;
repeat(hp)
{
	//Primeira fica no 40, segunda fica no 40 + 40, terceira fica no 40 + 80
	draw_sprite_ext(spr_player, 0, _margem + 40 + espaco * multiplicador, _altura_gui-40, 0.3, 0.3, 0, c_white, .3);
	//Depois de desenhar aumentar o valor do multiplicador
	multiplicador++;
}
//Resetando o valor do multiplicador
multiplicador = 0;

//Desenhando os escudos
repeat(shield_count)
{
	draw_sprite_ext(spr_shield, 2, _margem + 40 + espaco  * multiplicador, _altura_gui-80, 0.3, 0.3, 0, c_white, .3);
	multiplicador++;
}