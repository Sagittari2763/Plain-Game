if place_meeting(x + xspd, y, obj_shield) {
	if xspd < 0 and obj_shield.shieldFace = 2 {turnAround = true;}
	else if xspd >= 0 and obj_shield.shieldFace = 3 {turnAround = true;}
}

image_xscale = sign(-xspd);
if place_meeting(x + xspd, y, obj_wall) or turnAround {
	xspd *= -1;
	sound_hit();
	turnAround = false;
	}

x += xspd;