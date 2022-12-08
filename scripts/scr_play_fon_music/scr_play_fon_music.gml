// скрипт має задіяти функцію плавного затухання музики і плавно вмикати музику відповідно до таргет руми
// це у випадку якщо музика на кімнатах відрізняється
// окремі умови можна спробувати винести в окремі скрипти

// обдумавши скрипт плавно тушить стару музику після переходу і міняє змінну  new_sound
function scr_music_fon_change(r){
		
		switch(r)
		{
case rm_main_menu:				music_room.new_sound=snd_main_menu; break
case rm_mapa:					music_room.new_sound = music_room.old_sound; break

case rm_bakery :				music_room.new_sound = snd_rivalstation; break
case rm_food_shop :				music_room.new_sound = snd_rivalstation; break
case rm_indoor_rival_station :	music_room.new_sound = snd_rivalstation; break
case rm_street_first_side :		music_room.new_sound = snd_rivalstation; break
case rm_street_second_side :	music_room.new_sound = snd_rivalstation; break
case rm_tri_kalynky :			music_room.new_sound = snd_rivalstation; break
case rm_tri_kalynky_boss :		music_room.new_sound = snd_rivalstation; break

case rm_fishing :						music_room.new_sound = snd_Bazar; break
case rm_zoomagazine :					music_room.new_sound = snd_Bazar; break
case rm_okorochok_indoor :				music_room.new_sound = snd_Bazar; break
case rm_storage :						music_room.new_sound = snd_Bazar; break
case rm_tech :							music_room.new_sound = snd_Bazar; break
case rm_fish_and_bazaar :				music_room.new_sound = snd_Bazar; break
case rm_street_container :				music_room.new_sound = snd_Bazar; break
case rm_street_magazine_tech_storage :	music_room.new_sound = snd_Bazar; break
case rm_garage_gg :						music_room.new_sound = snd_Bazar; break
case rm_home_gg :						music_room.new_sound = snd_Bazar; break
case rm_home_gg_inside :				music_room.new_sound = snd_Bazar; break
case rm_home_gg_inside_kitchen :		music_room.new_sound = snd_Bazar; break

case rm_cinema_inside :			music_room.new_sound = snd_center; break
case rm_cinema_l :				music_room.new_sound = snd_center; break
case rm_cinema_r :				music_room.new_sound = snd_center; break
case rm_hotel_inside :			music_room.new_sound = snd_center; break
case rm_hotel_rooms :			music_room.new_sound = snd_center; break
case rm_kitchen :				music_room.new_sound = snd_center; break
case rm_restraunt :				music_room.new_sound = snd_center; break
case rm_room22 :				music_room.new_sound = snd_center; break
case rm_police :				music_room.new_sound = snd_center; break
case rm_police_inside :			music_room.new_sound = snd_center; break
case rm_police_inside_boss :	music_room.new_sound = snd_center; break
case rm_culture_hall_l :		music_room.new_sound = snd_center; break
case rm_culture_hall_r :		music_room.new_sound = snd_center; break
case rm_culture_inside :		music_room.new_sound = snd_center; break
case rm_fasfood :				music_room.new_sound = snd_center; break
case rm_center :				music_room.new_sound = snd_center; break
case rm_center_left :			music_room.new_sound = snd_center; break
case rm_center_right :			music_room.new_sound = snd_center; break

case rm_home_manda :	 music_room.new_sound = snd_main_menu1; break
case rm_home_entrance :	 music_room.new_sound = snd_main_menu1; break
case rm_ieghova_inside : music_room.new_sound = snd_main_menu1; break
case rm_south :			 music_room.new_sound = snd_main_menu1 ; break
case rm_box_inside :	 music_room.new_sound = snd_main_menu1; break
case rm_sport_centre :	 music_room.new_sound = snd_main_menu1; break
case rm_sport_inside :	 music_room.new_sound = snd_main_menu1; break
case rm_bibliotheka :	 music_room.new_sound = snd_main_menu1; break
case rm_hastronom_tukh : music_room.new_sound = snd_main_menu1; break
case rm_north :			 music_room.new_sound = snd_main_menu1; break
case rm_school :		 music_room.new_sound = snd_main_menu1; break

}
	if 	music_room.old_sound != music_room.new_sound audio_sound_gain(music_room.old_sound,0,3000)
	/*
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

audio_play_sound(global.sound,1,1);*/
}
