/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Mudando a direção depois que eu me movi X pixels
//Achar uma forma de ver qual era minha posição inicial
//Checando se eu me movi 50 pixels para direita ou para esquerda

if (x >  xstart + 30 || x < xstart - 30)
{
	//Eu devo inveter minha velocidade horizontal
	hspeed *= -1;
}
