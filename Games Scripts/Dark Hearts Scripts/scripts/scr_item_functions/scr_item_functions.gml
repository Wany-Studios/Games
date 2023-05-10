//pegando itens
function item_add(_item)
{
	var _added = false;
	
	if array_length(obj_item_manager.inv) < obj_item_manager.inv_max
	{
	array_push(obj_item_manager.inv, _item);
	_added = true;
	}
	
	return _added;
}

function ds_grid_add_item(){
var _grid = obj_inventario.grid_itens;

var _checagem =0;
while _grid[# Infos.Item, _checagem] != -1{
_checagem++;	
}
_grid[# 0, _checagem] = argument[0];
_grid[# 1, _checagem] = argument[1];
_grid[# 2, _checagem] = argument[2];
}
