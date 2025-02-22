if place_meeting(x, y, obj_player) {
	sound_powerup();
	global.score += 10;
	instance_destroy();
	obj_player.movespd += obj_player.powerup;
}