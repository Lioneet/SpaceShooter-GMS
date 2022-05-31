/// @description Insert description here
// You can write your code in this editor


//Eu vou me desenhar
draw_self();


//Desenhando o brilho



//Alterando como o video trata as cores
gpu_set_blendmode(bm_add);
draw_sprite_ext(brilho, image_index, x, y, image_xscale * 0.7, image_yscale * 0.7, image_angle, cores, 0.5);

//Voltando ao normal
gpu_set_blendmode(bm_normal);