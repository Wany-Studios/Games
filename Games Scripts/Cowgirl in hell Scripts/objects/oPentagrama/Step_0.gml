if scr_fim_animacao()
{
	sprite_index = sPentagramaCompleto;
	if !instance_exists(Obj_boss) and oPortaSpawn.sprite_index = sPortaAberta{
	instance_create_depth(919,519,depth,Obj_boss);
	}
}


















