/// @description Insert description here
// You can write your code in this editor

//Definindo o blendmode
gpu_set_blendmode(bm_add);

//Desenhando a sprite
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_aqua, image_alpha);

//Voltando o blendmode ao normal
gpu_set_blendmode(bm_normal);