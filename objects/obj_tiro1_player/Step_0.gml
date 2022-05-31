/// @description Insert description here
// You can write your code in this editor


//DIminuindo a escala do tiro
//Lerp é uma função de aproximação, eu faço o meu valor chegar em outro valor por uma porcentagem
//lerp (valor que eu tenho, valor apra chegar, porcentagem de aproximação)


//Step1 = 1 - 10 = 5 - 10
//Step 2 = 5-10 = 7,5 - 10
//Step3 = 7,5 - 10 = 8,75 - 10

//Fazendo meu Xscale chegar no valor original que é 1
image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_yscale, 1 ,0.5);

