/// @description Insert description here
// You can write your code in this editor

//Diminuir o alpha em .1
image_alpha -= .1;

//Me destruindo se meu alpha for menor ou igual a .5
if (image_alpha <= 0)
{
	instance_destroy(id, false);	
}

//Repetir o alarme em 1 segundo
alarm[0] = room_speed;