if place_meeting(x, y, obj_player) {
	sound_collect();
	global.score++;
	instance_destroy();
}