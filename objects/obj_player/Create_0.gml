/// @description Iniciando variáveis

//Velocidade - .05 - Limite = 10 // 45
//Tiro CD - 10% - Limite = 20 // 45
//Level Tiro - 1 - Limite = 5 // 10


velocidade = 5;

tiro_cd = room_speed;

level_tiro = 1;

//Sistema de hp e shield

hp = 3;
shield_count = 3;

my_shield = noone;

//Iniciando método
atirando = function()
{
	var fire = keyboard_check(vk_space);
	var y_tiro = y - sprite_height / 3;
	if (fire && alarm[0] == -1)
	{		
		//Som do tiro
		audio_play_sound(sfx_laser2, 1, 0);
		
		//Ativando o alarme para garantir que esse código vai ter que esperar 1 segundo
		alarm[0] = tiro_cd;
	
		//Meu código de criar o tiro
		//Criar o tiro quando eu apertar espaço
		//E depois só atirar novamente em 1 segundo	
		//Criar uma condição para atirar dependendo do level do tiro
		//Tiro do level 1
		if (level_tiro == 1)
		{
			instance_create_layer(x, y_tiro, "Tiro", obj_tiro1_player);
		}
		
		//Tiro do level 2
		else if (level_tiro == 2)
		{
			tiro2();
		}
		else if (level_tiro == 3)
		{
			//Tiro 1 Central
			instance_create_layer(x, y_tiro, "Tiro", obj_tiro1_player);
			
			//Tiro 2 Lateral
			tiro2();
		}
		
		//Tiro do level 4
		else if (level_tiro == 4)
		{
			tiro4();
		}
		
		//Tiro do level 5
		else if (level_tiro == 5)
		{
			tiro2();
			tiro4();
		}
		
	}	
	
}


//Método para criar o tiro 2
tiro2 = function()
{
	var y_tiro = y - sprite_height / 3;
	//Fazendo o tiro da esquerda ir para esquerda
	var tiro_1 = instance_create_layer(x - 50, y_tiro, "Tiro", obj_tiro2_player);
	//Mandando o tiro 1 ir para esquerda
    tiro_1.hspeed = -5;
			
	//Segundo tiro da asa direita
	var tiro_2 = instance_create_layer(x + 50, y_tiro, "Tiro", obj_tiro2_player);
	tiro_2.hspeed = 5;
}

//Método para criar o tiro 4
tiro4 = function()
{
	//Y do meu tiro
	var y_tiro = y - sprite_height/3;
	var direcao = 75;
			repeat(3)
			{
				var meu_tiro = instance_create_layer(x, y_tiro, "Tiro", obj_tiro1_player);
				//Definir a direção dele
				meu_tiro.direction = direcao;
				meu_tiro.image_angle = meu_tiro.direction - 90;
				//Aumentar a direção em 15
				direcao += 15;
		
			}	
}

///@method level_up(chance)
level_up = function(_chance)
{
	if (_chance >= 80)
	{
		//Aumentando o level do tiro SE o levle do tiro for menor do que 5
		if (level_tiro < 5)
		{
			level_tiro++;
		}	
		//Se não, caso eu já esteja no level máximo, eu ganho pontos
		else
		{
			//Ganhando pontos
			powerpoints(100);
		}
	}
	else if (_chance >= 40)
	{
		//Checando se a velocidade é menor do que 10
		if (velocidade <= 10)
		{
			//Aumentando a velocidade em 0.5
			velocidade += .5;	
		}
		else
		{
			powerpoints(10)	
		}
		
	}
	else if (_chance >= 5)
	{
		//Checando se a espera do tiro é maior do que 20
		if (tiro_cd >= 15)
		{
			//Diminuindo a espera do tiro em 10%
			tiro_cd *= .9;	
		}
		else
		{
			powerpoints(10);	
		}
	}
	else
	{
		if (hp < 3)
		{
			hp++;	
		}
	}
}

///@method perde_hp();
perde_hp = function()
{
	//Só vou perder vida se meu escudo é noone
	if (!my_shield)
	{
		//Se eu levei um tiro e não morri
		if (hp > 0)
		{
			hp--;
			screenshake(5);		
		}	
		else //Eu morri ao levar o tiro
		{
			instance_destroy();
			screenshake(25);
		}
	}
}

//Cria escudo
cria_shield = function()
{
	var shield = keyboard_check_pressed(ord("E"));
	if (shield && shield_count > 0 && !my_shield)
	{
			instance_create_layer(x, y, "Shield", obj_shield);
		
			//Eu sou o seu alvo
			obj_shield.alvo = id;	
		
			//Avisando que o escudo é o meu
			my_shield = shield;
		
			//Diminuindo a quantidade de escudos
			shield_count--;
}
}