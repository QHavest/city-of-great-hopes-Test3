// скрипт має задіяти функцію плавного затухання музики і плавно вмикати музику відповідно до таргет руми
// це у випадку якщо музика на кімнатах відрізняється
// окремі умови можна спробувати винести в окремі скрипти
function scr_music_fon_change(r){
	
// муз фон залізничної станції
if r=rm_indoor_rival_station or r=rm_indoor_rival_station or r=rm_street_first_side or r=rm_street_second_side 
{
	
if global.sound!= snd_rivalstation {
	audio_stop_sound(global.sound);
	global.sound = snd_rivalstation;
	}
}

// музфон центру
if r=rm_center or r=rm_center_left or r=rm_center_right
{
	if global.sound!= snd_center {
	audio_stop_sound(global.sound);
	global.sound = snd_center;
	}
}

// музфон базару
if r=rm_fish_and_bazaar or r=rm_street_container or r=rm_street_magazine_tech_storage
{
	if global.sound!= snd_Bazar {
	audio_stop_sound(global.sound);
	global.sound = snd_Bazar;
	}
	
} 

audio_play_sound(global.sound,1,1);
}
