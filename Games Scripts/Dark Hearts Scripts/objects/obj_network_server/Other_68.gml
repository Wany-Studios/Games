var idd = async_load[? "id"]
var type = async_load[? "type"]

if (server == idd){
	
if (type == network_type_connect){	
	var sock = async_load[? "socket"];
	var obj = instance_create_depth(x,y,0,obj_player_multiplayer);
	obj.sock = sock;
	ds_map_add(ds_clients,sock,obj);
	
}
     else if (type == network_type_disconnect){
		 var sock = async_load[? "socket"];
		var obj = ds_clients[? sock];
		disconect(obj.sock);
		instance_destroy(obj);
		ds_map_delete(ds_clients,sock);
	 }
	
	
}else {
	
	var sock = async_load[? "id"]
	var obj = ds_clients[? sock]
	var buff = async_load[? "buffer"]
	var rbuff = buffer_read(buff,buffer_string)
	
	if (rbuff == "Atualizar_Player"){
	 var xx = buffer_read(buff,buffer_s16)
	 var yy = buffer_read(buff,buffer_s16)
	 var xscale = buffer_read(buff,buffer_s16)
	 var imageindex = buffer_read(buff,buffer_s16)
	 var spriteindex = buffer_read(buff,buffer_s16)
	 
	 obj.x = xx
	 obj.y = yy
	 obj.image_xscale = xscale
	 obj.image_index = imageindex
	 obj.sprite_index = spriteindex
	}
	
}
	










