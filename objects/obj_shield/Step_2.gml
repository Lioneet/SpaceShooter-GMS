/// @description Insert description here
// You can write your code in this editor


//Se o alvo for nooe, se destrua!
if (!alvo | !instance_exists(alvo)) //Não tiver alvo
{
		instance_destroy();
}

//Você vai ter que ficar na mesma posição que seu alvo
//Conferir se o meu alvo existe no jogo

x = alvo.x;
y = alvo.y;