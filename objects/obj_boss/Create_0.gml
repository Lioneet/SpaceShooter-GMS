/// @description Insert description here
// You can write your code in this editor

/*
Estado 1 = Parado dando o tiro 2
Estado 2 = Movendo dando o tiro 1
Estado 3 = Parado intercalando entre o tiro 1 e 2
Estado (4) especial 1 = Ficar invulneravel enquanto cria dois minions para recuperar a vida

*/
randomize();

estado_atual = choose("estado 1", "estado 2", "estado 3");

delay_tiro = room_speed / 2; //Meio segundo
espera_tiro = 0;

delay_estado = room_speed * 10; //5 segundos
espera_estado = delay_estado;

velocidade_horizontal = 3;

//HP do boss
max_hp = 1500;
hp_atual = max_hp;

//Criei minions
minion_criado = false

//Tocando a música do boss
audio_play_sound(snd_boss_fight, 0, 1);


//Iniciando métodos

///@method tiro_01(true_direita_false_esquerda)
tiro_01 = function(_direita)
{
	if (_direita)
	{
		var _posx =	160;
	}
	else
	{
		var _posx = -160;	
	}
	instance_create_layer(x + _posx, y + 22, "Tiro", obj_tiro_inimigo1);
	//Som do tiro
	audio_play_sound(sfx_laser1, 1, 0);
}

tiro_02 = function()
{
	instance_create_layer(x, y + 80, "Tiro", obj_tiro_inimigo2);
	//Som do tiro
	audio_play_sound(sfx_laser1, 1, 0);
}

//Método de troca de estados
troca_estado = function()
{
	//Alternando os estados
	//Diminuindo a espera do estado
	espera_estado--;
	if (espera_estado <= 0)
	{
		//VOu escolher um outro estado SE minha vida for maior do que metade do total
		if (hp_atual > max_hp / 2)
		{
			//Vou escolher um outro estado
			estado_atual = choose("estado 1", "estado 2", "estado 3");
		}
		else //Estou com metade ou menos
		{
			estado_atual = choose("estado 1", "estado 2", "estado 3", "estado 4");
		}
		//Fazendo o espera estado ter um valor alto de nove
		espera_estado = delay_estado;
	
		//Resetando minion
		minion_criado = false;
	}	
}

//Método estado 01
estado_01 = function()
{
	//Diminuindo o valor da espera do tiro
	espera_tiro--;
	//Criando o tiro 2 SE a espera do tiro for menor do que ou igual a 0
	if (espera_tiro <= 0)
	{
		tiro_02();
		//Atirei, vou mandar ele esperar
		espera_tiro = delay_tiro * 1.2;
	}	
}

//Método estado 02
estado_02 = function()
{
	//Indo apra a direita
	x += velocidade_horizontal;
	//Invertendo a velocidade horizontal ao tocar no limite da room
	if (x >= 1632 || x <= 288) velocidade_horizontal *= -1;

	//Diminuindo o valor da espera do tiro
	espera_tiro--;
	//Criando o tiro 1 Se a espera do tiro for menor do que ou igual a 0 
	if (espera_tiro <= 0)
	{
		//Tiro da direita
		tiro_01(true);
		
		//Tiro da esquerda
		tiro_01(false);
		
		//Atirei, vou mandar ele espera
		espera_tiro = delay_tiro * 1.5;		
	}
	
	
}

//Método estado 03
estado_03 = function()
{
	//Diminuindo o valor da espera do tiro
	espera_tiro--;
	
	//Criando o tiro 2 SE a espera do tiro for menor ou igual a 0
	if (espera_tiro <= 0)
	{
		//Tiro 2
		tiro_02();	
		espera_tiro = delay_tiro * 2;
	}
	
	//Criar o tiro 1 da esquerda
	if (espera_tiro == delay_tiro)
	{
		tiro_01(false);	
	}
	//Tiro 1 da direita
	if (espera_tiro == delay_tiro + round(delay_tiro / 2))
	{
			tiro_01(true);
	}

}

//Método estado 04
estado_04 = function()
{
	
	//Trocando de sprite
	sprite_index = spr_boss_escuro;
	
	//Indo para o meio da tela
	//Convertendo esse valor para 1, -1 ou 0
	//Se na função sign eu dou um valor positivo, qualquer valor, ele retorna 1
	//SE ela dar um valor negativo, qualquer valor, ele retorna -1
	//Se ela da 0, ele retorna 0
	x += sign(room_width / 2 - x);
	
	
	//Criando minions se eu puder cria-los
	if (!minion_criado)
	{
		//Esquerda
		var _minion = instance_create_layer(128, 672, "Inimigos", obj_minion);
		_minion.image_angle = 90;
		
		//Direita
		 _minion = instance_create_layer(1792, 672, "Inimigos", obj_minion);
		 _minion.image_angle = 270;
		 
		 minion_criado = true;
	}	
}