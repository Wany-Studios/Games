//contrução de templates para armas
function create_weapon(_sprite = sPinkRod,_weaponlength = 0,_bulletobj = obj_bullet,_cooldown = 1,_bulletnum = 1, _spread = 0, _pickupsprite = sPinkRodPickup)constructor{

	sprite = _sprite;
	length = _weaponlength;
	bulletobj = _bulletobj;
	cooldown = _cooldown;
	bulletnum = _bulletnum;
	spread = _spread;
	pickupsprite = _pickupsprite;
	
}



//as armas
global.weaponlist = {

pinkrod : new create_weapon(
	sPinkRod,
	sprite_get_bbox_right(sPinkRod) - sprite_get_xoffset(sPinkRod),
	obj_bullet,
	11.2,
	1,
	0,
	sPinkRodPickup
	),
	
yellowgun : new create_weapon(
	sYellowGun,
	sprite_get_bbox_right(sYellowGun) - sprite_get_xoffset(sYellowGun),
	obj_yellow_bullet,
	3,
	1,
	0,
	sYellowGunPickup
	),
	
redgun : new create_weapon(
	sRedGun,
	sprite_get_bbox_right(sRedGun) - sprite_get_xoffset(sRedGun),
	obj_red_bullet,
	40,
	7,
	45,
	sRedGunPickup
	),

}
