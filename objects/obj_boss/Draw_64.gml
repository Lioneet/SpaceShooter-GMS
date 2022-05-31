/// @description Insert description here
// You can write your code in this editor

//Convertendo o valor da vida atual do boss emum número entre 0 e 100
//Vida atual dividido por vida max vai retornar um valor entre 0 e 1 enquanto a vida_atual for menor ou igual a vida max, depois ao multiplicar o resultado por 100
//A gente receber um valor entre 100 e 0 
var _vida = (hp_atual / max_hp) * 100;
//Desenhando a barra de hp do boss
draw_healthbar(200, 20, 1080, 30, _vida, c_black, c_red, c_orange, 0, true, 1);