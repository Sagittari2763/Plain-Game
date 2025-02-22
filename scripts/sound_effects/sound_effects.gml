function sound_collect() {audio_play_sound(sfx_collect, 1, false);}
function sound_walk() {audio_play_sound(sfx_walk, 1, false);}
function sound_hit() {audio_play_sound(sfx_hit, 0, false);}
function sound_powerup() {audio_play_sound(sfx_powerup, 1, false);}
function sound_levelup() {audio_play_sound(sfx_levelup, 1, false);}
function sound_explosion1() {audio_play_sound(sfx_explosion, 1, false);}

function sound_maintheme0() {
	audio_stop_sound(music_theme);
	audio_stop_sound(music_theme_2);
	}

function sound_maintheme1() {
	audio_stop_sound(music_theme);
	audio_stop_sound(music_theme_2);
	audio_play_sound(music_theme, 1, true);
	}

function sound_maintheme2() {
	audio_stop_sound(music_theme);
	audio_stop_sound(music_theme_2);
	audio_play_sound(music_theme_2, 1, true);
	}