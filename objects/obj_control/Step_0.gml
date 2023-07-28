 /// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_player))
{
	// Só faço isso SE o jogo estiver rodando
	if (rollback_game_running) room_restart();
}

/*Checanso se o player NÃO existe E se eu ainda Não criei a minha sequencia
if (!instance_exists(obj_player) && !gameover_seq && !endgame)
{
	//Criando a minha sequencia
	//Criando apenas UMA sequence
	gameover_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, sq_gameover);
	audio_play_sound(sfx_lose, 1, 0);
}
*/