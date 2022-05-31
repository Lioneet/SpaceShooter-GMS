/// @description Insert description here
// You can write your code in this editor

layer_sequence_create("Boss_morrendo", x, room_height / 2 - 32, sq_boss_morte);


//Screenshaaaake
screenshake(50);

//Aumentando a variavel global
global.total_inimigos++;

//Ganhando pontos
powerpoints(200);