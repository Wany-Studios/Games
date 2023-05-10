for(i = ds_map_find_first(ds_clients); !is_undefined(i);i = ds_map_find_next(ds_clients,i)){
 obj = ds_clients[? i]
 
 buffer_seek(buff,buffer_seek_start,0)
 buffer_write(buff,buffer_string,"Send_Client")
 buffer_write(buff,buffer_s16,instance_number(obj_player_multiplayer)-1)
 
 with(obj_player_multiplayer){
	 if (other.obj.sock != sock){
	buffer_write(other.buff,buffer_s16,sock)
	buffer_write(other.buff,buffer_s16,x)
	buffer_write(other.buff,buffer_s16,y)
	buffer_write(other.buff,buffer_s16,image_xscale)
	buffer_write(other.buff,buffer_s16,image_index)
	buffer_write(other.buff,buffer_s16,sprite_index)
	 }
	 
 }
 network_send_packet(obj.sock,buff,buffer_tell(buff))
 
}











