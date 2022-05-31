 /// @description Insert description here
// You can write your code in this editor



//Reiniciando APENAS se o player já morreu
if (gameover_seq)
{
	
	//Criando o objeto transição com o destino da room inicial
	var _transicao = instance_create_layer(x, y, "Player", obj_transicao);
	_transicao.destino = rm_inicio;
}