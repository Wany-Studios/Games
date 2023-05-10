
var buffer = async_load[? "buffer"]
var rbuffer = buffer_read(buffer,buffer_string)

if (rbuffer == "Send_Client"){
	var size = buffer_read(buffer,buffer_s16)
	for (i = 0;i < size; i++){
	var sock = buffer_read(buffer,buffer_s16)
	var xx = buffer_read(buffer,buffer_s16)
	var yy = buffer_read(buffer,buffer_s16)
	var xscale = buffer_read(buffer,buffer_s16)
	var imageindex = buffer_read(buffer,buffer_s16)
	var spriteindex = buffer_read(buffer,buffer_s16)
		
		if(!ds_map_exists(ds_jogadores,sock)){
		var obj = instance_create_depth(xx,yy,0,obj_player_multiplayer)	
		obj.sockk = sock
		ds_map_add(ds_jogadores,sock,obj)
		}else{
			var obj = ds_jogadores[? sock]
			obj.sockk = sock
			obj.x = xx
			obj.y = yy
			obj.image_xscale = xscale
			obj.image_index = imageindex
			obj.sprite_index = spriteindex
		}
		
	}
	
}

if (rbuffer == "ds"){
	var s = buffer_read(buffer,buffer_s16)
	var obj = ds_jogadores[? s]
	instance_destroy(obj)
	ds_map_delete(ds_jogadores,s)
}









