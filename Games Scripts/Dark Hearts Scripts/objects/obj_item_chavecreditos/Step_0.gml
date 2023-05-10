//a imagem que o item vai se transformar
sprite_index = item.sprite;

//codigo para o item ser pego
if place_meeting(x, y, obj_player) && keyboard_check_pressed(ord("E"))
{
	//toca o efeito sonoro
	oSFX.picksnd = true;
	//caso o item seja pego ele é removido do chão
   if item_add(item) == true
   {
	   
   instance_destroy();
   
   }
}
