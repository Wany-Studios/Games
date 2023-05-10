//colocando as entradas
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(ord("E"));

//movimentando as setas
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};



//seleciona o item
selected_item = -1;
for (var i = 0; i < array_length(inv); i++)
   {
   
   
    if keyboard_check(ord("E"))
   {
	selected_item = i;
	
	
   }
   
   }
   
   
//usa o item

if selected_item != -1
{

if keyboard_check_pressed(ord("E"))
{
inv[selected_item].effect();	
}
//descarta o item se:
if keyboard_check_pressed(vk_backspace) && inv[selected_item].can_drop == true
    {
     //livra-se do item
	 array_delete(inv, selected_item, 1);
	}
}
