// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake)
{
	//Criando o screenshake
	var screen = instance_create_layer(0, 0, "Shield", obj_screenshake);
	screen.shake = _shake;
}


//função para ganhar pontos
function powerpoints(_points)
{
	if (instance_exists(obj_control))
	{
		obj_control.ganha_pontos(_points);	
	}

}


//Destruindo a sequence
function destroy_seq()
{
	//Tentando pegar a sequência da minha layer
	var elementos = layer_get_all_elements("Boss_entrada");
	layer_sequence_destroy(elementos[0]);
	
	//Criando o boss
	instance_create_layer(960, 256, "Boss", obj_boss);
}


//Criando a sequencia do player
function player_endgame()
{
	if (instance_exists(obj_player))
	{
		layer_sequence_create("Player", obj_player.x, obj_player.y, sq_endgame);
		
		//Destruindo o player
		instance_destroy(obj_player, false);
		
		//Impedindo que o control crie o gameover
		if (instance_exists(obj_control))
		{
			obj_control.endgame = true;
		}
	}
	
}


function cria_transicao()
{
	var _transicao = instance_create_layer(0, 0, "Player", obj_transicao);
	_transicao.destino = rm_inicio;
}