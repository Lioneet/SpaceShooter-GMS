/// @description Insert description here
// You can write your code in this editor


//Desenhar a quantidade de naves representando a quantidade de hp que o player possui
//Desenhar uma vida do lado da outra
var multiplicador = 0;
var espaco = 45;
repeat(hp)
{
	//Primeira fica no 40, segunda fica no 40 + 40, terceira fica no 40 + 80
	draw_sprite_ext(spr_player, 0, 40 + espaco * multiplicador, 60, 0.3, 0.3, 0, c_white, .3);
	//Depois de desenhar aumentar o valor do multiplicador
	multiplicador++;
}
//Resetando o valor do multiplicador
multiplicador = 0;

//Desenhando os escudos
repeat(shield_count)
{
	draw_sprite_ext(spr_shield, 2, 40 + espaco  * multiplicador, 110, 0.3, 0.3, 0, c_white, .3);
	multiplicador++;
}