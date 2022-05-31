/// @description Insert description here
// You can write your code in this editor

//Criando explosão
instance_create_layer(x,y, layer, obj_explosao_inimigo);

//Rodando o metodo de ganhar pontos
//Iniciando varial

powerpoints(pontos);


//Dropando o item
item_drop(chance);

//Criando o screenshake
screenshake(10);

//Aumentando a variavel global
global.total_inimigos++;

