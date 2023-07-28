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
	//Criando a explosão
	instance_create_layer(x,y, layer, obj_explosao_inimigo);

	//Screenshake
	screenshake(10);

	//Aumentando a variavel global
	global.total_inimigos++;
}


//Destruindo o tiro

instance_destroy(other);