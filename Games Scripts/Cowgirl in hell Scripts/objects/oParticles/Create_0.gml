partsys = part_system_create();
//debris
parttypeasteroiddebris = part_type_create();
part_type_sprite(parttypeasteroiddebris,sCoisasFeias,false,false,true);
part_type_life(parttypeasteroiddebris,60,80);
part_type_alpha3(parttypeasteroiddebris,.8,.8,0);
part_type_direction(parttypeasteroiddebris,1,359,0,false);
part_type_orientation(parttypeasteroiddebris,0,359,1,false,false);
part_type_speed(parttypeasteroiddebris,3,3.8,-0.02,0);
