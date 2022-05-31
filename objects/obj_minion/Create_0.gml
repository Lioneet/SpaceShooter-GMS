/// @description Insert description here
// You can write your code in this editor

//Iniciando alarme  
alarm[0] = room_speed;



//Iniciando invisivel
image_alpha = 0;


//Hp
hp = 10;


escala = 1;
aumento_escala = 0.01

rodei = false;


//Checando se eu colodi com outro minion
if (place_meeting(x, y, obj_minion))
{
	//Se eu colodir com um minion eu subo 128 pixel
	y -= 128;
}