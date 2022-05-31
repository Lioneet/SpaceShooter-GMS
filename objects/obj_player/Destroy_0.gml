 /// @description Insert description here
// You can write your code in this editor

//Criando o efeito de explosão
instance_create_layer(x, y,"Player", obj_explosao_inimigo);


//Aumentando a variavel global de mortes
global.total_mortes++;