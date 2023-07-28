/// @description Insert description here
// You can write your code in this editor

//Destruindo o shield
if (image_index > 0)
{
	image_index--;
	
	image_alpha -= 0.2;
}
else
{
	instance_destroy();	
	//Avisando meu alvo (que é o player) que o escudo dele não existe mais
	alvo.my_shield = noone;
	//Som do escudo
	audio_play_sound(sfx_shieldDown, 1, 0);
}

alarm[0] = room_speed;

