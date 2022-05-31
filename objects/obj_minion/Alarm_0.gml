/// @description Insert description here
// You can write your code in this editor

//Criando o tiro

instance_create_layer(x, y, "Tiro", obj_tiro_minion);

rodei = true;

//Reiniciando o alarme
alarm[0] = room_speed / 2 ;
