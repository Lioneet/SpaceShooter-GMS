/// @description Iniciando

//Iniciando o alarme em 1 segundo
alarm[0] = room_speed;


boss_criado = false;

endgame = false;

//Randomizando o jogo
//randomize();

//Iniciando o sistema de pontos
pontos = 0;

//Iniciando o sistema de level
level = 1;

//Quantidade de pontos para upar
proximo_level = 100;

//Variável de controle para o game over
gameover_seq = noone;


//Criando um método para ganhar pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos * level;	
	
	//Ganhando level se os pontos forem maior do que o próximo level
	if (pontos >= proximo_level)
	{
		level++;	
		//Dobrando o valor necessario pro up
		proximo_level *= 2;
	}
}


//Criando o método para gerar inimigos
spawner = function()
{
	//Definindo a posição X e Y
	var xx = random_range(64, 1856);
	//Aumentando o limite com base no levle do jogo
	var yy = random_range(-64, -1248 - (level * 700));
	
	//Escolhendo a chance de criar cada inimigo
	var chance = random_range(0, level);
	//Definindo qual inimigo eu vou criar
	var inimigo = obj_inimigo1;
	
	//SE o valor da chance for maior do que 2 criar o inimigo 2
	if (chance > 2)
	{
		inimigo = obj_inimigo2;	
	}

	//Criando o inimigo
	instance_create_layer(xx, yy, "Inimigos", inimigo);

}


