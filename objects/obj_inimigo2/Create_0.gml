/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


//Inciando variavel
pontos = 20;

chance = 30;

//Criando a minha variável de controle para saber se eu posso me mover para os lados
posso_mover_lado = true;

//Criando a função de tiro

atirando = function()
{
	
	//Criando o tiro SE eu já estiver aparecendo na tela
	if (y >= 0)
	{
			instance_create_layer(x - 3, y+ sprite_height / 3, "Tiro", obj_tiro_inimigo2);
			//Som do tiro
			audio_play_sound(sfx_laser1, 1, 0);
	}
	
}

