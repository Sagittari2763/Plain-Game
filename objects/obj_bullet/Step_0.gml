if place_meeting(x, y, obj_shield) {
	if obj_shield.shieldFace = 2 or obj_shield.shieldFace = 3 {currentdir = -direction;}
	else {currentdir = direction;}
	sound_hit();
	instance_create_depth(x, y, depth, obj_bullet_turned, {direction : currentdir, speed : -currentspd});
	instance_destroy();
}