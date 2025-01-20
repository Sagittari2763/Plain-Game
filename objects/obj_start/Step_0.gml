if timer > 0 {
	instance_deactivate_all(true);
}

timer--;
if timer <= 60 {sprite_index = spr_begin;}
if timer <= 0 {instance_activate_all();}
if not nextRoom {sound_maintheme();}
if timer <= -invisibleTime {
	image_alpha = 0;
	if nextRoom {
		sound_maintheme();
		room_goto_next();
		}
	}