/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//Definindo os controles
rollback_define_input(
{
	up : ord("W"),
	down : ord("S"),
	left : ord("A"),
	right : ord("D"),
	space : vk_space,
	E : ord("E")
}
)
//Definindo o player
rollback_define_player(obj_player, "Player");

if (!rollback_join_game())
{
	rollback_create_game(2,0);	
}



