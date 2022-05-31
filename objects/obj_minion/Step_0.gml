/// @description Insert description here
// You can write your code in this editor

//Ficando visivel em 1 segundo se eu ainda não estou visivel
//Se eu ainda não estou visivel E se o meu alarme ainda não rodou
if (image_alpha < 1 && !rodei)
{
	image_alpha += 1 / room_speed;
} 


if (escala > 1.5 || escala < 1)
{
	aumento_escala *= -1;	
}

//Aumentando a escala enquanto ela for menor do que 1.5
escala += aumento_escala;
