/// @description Insert description here
// You can write your code in this editor

//Desenhando a maior pontuação se  o objeto transição não existe

//Definindo a fonte
draw_set_font(fnt_rank);
//Pontos
var _pontos = round(pontos);
//Desenhando pontos
draw_text(750, 255, "Maior pontuação: " + string(_pontos));
	
//Inimigos mortos
draw_text(750, 455, "Inimigos mortos: " + string(global.total_inimigos));
	
//Mortes do player
draw_text(750, 655, "Total de mortes: " + string(global.total_mortes));
	
//Resetando a fonte
draw_set_font(-1);

//Fazendo pontos chegar até o valor do max pontos
//SE pontos for menor do que max pontos eu aumento o valor dele
//Pegando 5% do max pontos e adicionando esse valor em pontos enquanto ele for menor que max pontos
if (pontos < global.max_pontos)
{
	//Aumentando o valor de pontos em 5% do max_pontos
	var _incrementa_pontos = global.max_pontos * 0.005; //é meio % do max_pontos
	pontos += _incrementa_pontos;
}