/// @description Criando os inimigos
// You can write your code in this editor

//REpetindo o mesmo código
//Criando o inimigo

//Rodar o código apenas se não existir inimigos no jogo
if (!instance_exists(obj_inimigo1))
{
	var repetir = 10 * level;
	//Crio inimigos se os inimigos não existirem
	//Só criar inimigos SE eu ainda não cheguei no levle 10
	if (level < 10)
		{
		repeat(repetir)
		{
			spawner();	
		}
	}
	//Criar o boss (animação de entrada do boss)
	//Garantir que só estou criando ela uma vez
	else if (level >= 10 && !boss_criado)
	{
		layer_sequence_create("Boss_entrada", 960, 512, sq_boss_entrada);	
		boss_criado = true;
		
		//Parando de tocar a música
		audio_stop_all();
	}
	

}




//Reiniciando o alarm

alarm[0] = room_speed * 5;