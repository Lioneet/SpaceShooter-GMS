/// @description Se detruindo
// You can write your code in this editor

instance_destroy();
instance_create_layer(x,y, "Tiro", obj_impacto_tiro);

//Destruindo o inimigo
instance_destroy(other);
//Rodando o metodo de morrer do outro
other.morrendo();