shootTimer--;
if shootTimer <= 0 {
	shootTimer = shootTime;
	sound_hit();
	instance_create_depth(x+6, y+12, depth-1000, obj_bullet, {speed : 3, direction : point_direction(x, y, obj_player.x, obj_player.y)});
}

if place_meeting(x, y, obj_bullet_turned) {
	sound_explosion1();
	global.score += 50;
	instance_destroy();
}