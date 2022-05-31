/// @description Insert description here
// You can write your code in this editor

//Movendo a tela
view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

//DIminuindo o valor do screenshake
shake *= .9;

//SE o vaor do shake for menor do que 0.5, então ele se destroi

if (shake < 0.5)
{
	instance_destroy();
}