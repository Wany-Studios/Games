tcp = network_create_socket(network_socket_tcp)
network_connect(tcp,"172.16.0.213",25555)
buff = buffer_create(1024,buffer_grow,1)

ds_jogadores = ds_map_create()








