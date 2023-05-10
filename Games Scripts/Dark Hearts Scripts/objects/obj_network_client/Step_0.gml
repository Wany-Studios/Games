buffer_seek(buff,buffer_seek_start,0)
buffer_write(buff,buffer_string,"Atualizar_Player")
buffer_write(buff,buffer_s16,obj_player_multiplayer.x)
buffer_write(buff,buffer_s16,obj_player_multiplayer.y)
buffer_write(buff,buffer_s16,obj_player_multiplayer.image_xscale)
buffer_write(buff,buffer_s16,obj_player_multiplayer.image_index)
buffer_write(buff,buffer_s16,obj_player_multiplayer.sprite_index)
network_send_packet(tcp,buff,buffer_tell(buff))










