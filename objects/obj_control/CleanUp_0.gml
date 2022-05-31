/// @description Insert description here
// You can write your code in this editor

//Evento que roda quando o objeto sai da memória do computador
//Atualizando os pontos
//Checando se os pontos são a maior pontuação
if (pontos > global.max_pontos) 
{
	global.max_pontos = pontos;
}

//Parandot odos os sons
audio_stop_all();