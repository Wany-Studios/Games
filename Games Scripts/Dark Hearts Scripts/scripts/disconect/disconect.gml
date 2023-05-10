
ds_clients = ds_map_create();
sock_disconnect = argument0
for(i = ds_map_find_first(ds_clients); !is_undefined(i);i = ds_map_find_next(ds_clients,i)){
	obj = ds_clients[? i]
	if (sock_disconnect != obj.sock){
	buffer_seek(buff,buffer_seek_start,0)
	buffer_write(buff,buffer_string,"ds")
	buffer_write(buff,buffer_s16,sock_disconnect)
	network_send_packet(obj.sock,buff,buffer_tell(buff))
	}
}
