if place_meeting(x, y, obj_player) {
	sound_powerup();
	global.score += 10;
	instance_destroy();
	instance_create_depth(-99, -99, -20, obj_shield);
}