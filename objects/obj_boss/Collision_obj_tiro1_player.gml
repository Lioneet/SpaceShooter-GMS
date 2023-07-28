/// @description Insert description here
// You can write your code in this editor

//Perdendo 1 de vida
if (estado_atual != "estado 4")
{
	if(hp_atual > 0)
	{
		hp_atual--;
	}
	else
	{
		instance_destroy();
		morrendo();
	}

	instance_destroy(other);
}