//apaga o orbe se morrer enquanto carrega
if instance_exists(bulletinst) and bulletinst.state == 0{
bulletinst.destroy = true;	
}

repeat(10){instance_create_depth(x,y,99,oDebris);}
repeat(10){instance_create_depth(x,y,99,oDebris2);}

var _xx = x;
var _yy = y;

with (oParticles){
	part_particles_create_color(partsys,_xx,_yy,parttypeasteroiddebris,c_white,10);
}










