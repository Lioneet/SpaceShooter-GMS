/// @description Insert description here
// You can write your code in this editor

//Herdando o evento do pai
event_inherited();


//Checando se ja passei de 1/3 da tela
if ( y > room_height/4 && posso_mover_lado == true)
{
	//Checando qual lado da room estou
	if ( x < room_width / 2)
	{
		//Indo para direita
		hspeed =  4;
		
		//Avisando que ele não pode mais se mover
		posso_mover_lado = false;
	}
	else
	{
		//Indo para esquerda
		hspeed = -4;
		
		//Avisando que ele não pode mais se mover
		posso_mover_lado = false;
	}
		
}