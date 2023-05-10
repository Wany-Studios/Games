alarm_set(0,time);

var camerax = camera_get_view_x(view_camera[0]);
var cameray = camera_get_view_y(view_camera[0]);

var cameraw = camera_get_view_width(view_camera[0]);
var camerah = camera_get_view_height(view_camera[0]) + 80;


repeat(50){
var randomy = irandom_range(0,camerah)

part_particles_create(particle_system,camerax + cameraw + 25,cameray + randomy,particle_wind,1);
}











