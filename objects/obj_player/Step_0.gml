if alive {player_controls();

	xspd = (rightKey - leftKey) * movespd;
	yspd = (downKey - upKey) * movespd;

	if place_meeting(x, y, obj_flag) {
		sound_levelup();
		room_goto_next();
		}

	if place_meeting(x + xspd, y, obj_wall) {xspd = 0;}
	if place_meeting(x, y + yspd, obj_wall) {yspd = 0;}

	if yspd < 0 {sprite_index = spr_player_up;}
	else if xspd > 0 {sprite_index = spr_player_right;}
	else if xspd < 0 {sprite_index = spr_player_left;}
	else if yspd > 0 {sprite_index = spr_player_down;}
	else {sprite_index = spr_player_idle;}
	
	if xspd != 0 or yspd != 0 {
		walkTimer--;
		if walkTimer <= 0 {
			sound_walk();
			walkTimer = walkTime;
		}
	} else walkTimer = 0;

	x += xspd
	y += yspd
}

player_check_collision();

if !alive and deathTimer > 0 {deathTimer--;}
if !alive and deathTimer <= 0 {room_restart();}
if image_index >= 3 {image_speed = 0;}