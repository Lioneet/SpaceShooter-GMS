/// @description Insert description here
// You can write your code in this editor

//Variaveis de movimentação
var _controles = rollback_get_input();

var up, down, left, right, shield;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
shield = keyboard_check_pressed(ord("E"));

//Criando o escudo 
cria_shield();

//Movendo o y e x com base no resultado da conta
y += (_controles.down - _controles.up) * velocidade;
x += (_controles.right - _controles.left) * velocidade;

x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);

//Criando o tiro
atirando();

