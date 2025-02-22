xspd = 0;
yspd = 0;
movespd = 1;
powerup = 0.5;
alive = true;
deathTimer = 0;
walkTime = 20;
walkTimer = 0;

function player_check_collision() {
	if alive {
		if place_meeting(x, y, obj_eye) player_death();
		if place_meeting(x, y, obj_bug) player_death();
		if place_meeting(x, y, obj_spikes) player_death();
		if place_meeting(x, y, obj_alien) player_death();
		if place_meeting(x, y, obj_bullet) player_death();
	}
}

function player_death() {
	sound_explosion1();
	global.score -= 50;
	deathTimer = 60;
	alive = false;
	image_index = 0
	sprite_index = spr_player_death;
}