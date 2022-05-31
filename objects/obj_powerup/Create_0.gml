/// @description Insert description here
// You can write your code in this editor

//Criando uma chance entre 0 e 100 para ele decidir qual vai ser o powerup

chance = random(100);

//Se o valor de chance for 90 ou mais, ela cria o power up do tiro
//Se o valor de chance for 45 ou mais, ela cria o power up do tiro cd
//Se não ela cria o power up da velocidade

//Fazendo ele se mover
speed = 1;
direction = irandom(359);

//Iniciando alarme
alarm[0] = room_speed;


//Dependendo da chance a cor vai ser diferente

if (chance >= 90)
{
	cor = c_red	;
}
else if (chance >= 40)
{
	cor = c_lime;	
}
else if (chance >= 5)
{
	cor = c_yellow;	
}
else 
{
	cor = c_aqua;	
}