/// @description Insert description here
// You can write your code in this editor
 vspeed = 2;
 
 //Chance de drop de power up = 20%
 chance = 20;
 //Iniciando alarme entre 1 e 3 segundos
 alarm[0] = random_range(1, 3) *room_speed;
 
 
 
 //Checando se eu estou colidindo com algum outro inimigo
//SE eu colodir com alguém eu me destruo
if (place_meeting(x, y, obj_inimigo1))
{
	instance_destroy(id, false);	
}
 
//Iniciando método
atirando = function()
{
		//Criando o meu tiro se eu ja estar aparecendo na tela
	if (y > 0)
	{
	instance_create_layer(x - 3, y + sprite_height/3, "Tiro", obj_tiro_inimigo1);
	//Som do tiro
	audio_play_sound(sfx_laser1, 1, 0);
	}
}

//Variavel
pontos = 10;

///@method item_drop(chance_de_dropar_em_porcentagem)
item_drop = function(_chance)
{
	var valor = random(100);
	
	//Se o valor for menor do que a chance, ele cria o item
	if (valor < _chance && y > 96)
	{
		instance_create_layer(x, y, "Tiro", obj_powerup);	
	}
}