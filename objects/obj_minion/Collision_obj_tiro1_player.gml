/// @description Insert description here
// You can write your code in this editor


//TOmando dano se eu tiver mais de 1 hp
if (hp > 1)
{
	hp--;
	
	//Diminuindo a transparência
	image_alpha -= 0.08;
	aumento_escala *= 1.2;
}
else
{
	instance_destroy();		
}


//Destruindo o tiro

instance_destroy(other);