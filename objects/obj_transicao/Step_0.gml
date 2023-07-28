/// @description Insert description here
// You can write your code in this editor

//Deixar a tela escura SE eu ainda não troquei de room
if (!room_trocada)
{
	alpha += .03;	
}
else if (room_trocada)
{
	alpha -= .03;	
}
//Checar se a tela esta totalmente escura, ou seja o alpha é 1 ou mais
//Mudar de rrom SE eu ainda não troqueid e room
if (alpha >= 1 && !room_trocada)
{
	room_goto(destino);	
}

//Se destruindo
if (alpha <= 0)
{
	instance_destroy();	
	instance_create_layer(x,y, "Player", obj_multiplayer);
}