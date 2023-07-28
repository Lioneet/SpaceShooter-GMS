/// @description Insert description here
// You can write your code in this editor

//Executando o level up do player
other.level_up(chance);

instance_destroy();
instance_create_layer(x, y, "Tiro", obj_impacto_tiro);