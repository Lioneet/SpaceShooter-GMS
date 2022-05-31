/// @description Insert description here
// You can write your code in this editor

//Criando a explosão
instance_create_layer(x,y, layer, obj_explosao_inimigo);

//Screenshake
screenshake(10);

//Aumentando a variavel global
global.total_inimigos++;