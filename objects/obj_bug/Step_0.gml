if place_meeting(x, y + yspd, obj_shield) {
	if yspd < 0 and obj_shield.shieldFace = 4 {turnAround = true;}
	else if yspd >= 0 and obj_shield.shieldFace = 1 {turnAround = true;}
}

if yspd != 0 face = -yspd;
image_yscale = sign(face);
if place_meeting(x, y + yspd, obj_wall) or turnAround {
	image_speed = 0.5;
	yspd = 0;
	sound_hit();
	cooldown = true;
	cooldownTimer = cooldownTime;
	charge = false;
	turnAround = false;
	}
	
if cooldownTimer > 0 cooldownTimer--;
else cooldown = false;

if not cooldown and not charge {
	yspd = face;
	charge = true;
	image_speed = 1;
}

y += yspd;