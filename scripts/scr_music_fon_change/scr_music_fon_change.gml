// скрипт плавно тушить стару музику до переходу і міняє змінну  new_sound
function scr_music_fon_change(r){
	if !object_exists(music_room) instance_create_depth(0,0,-99999, music_room)
	with (music_room){
		new_sound = scr_rooms_variables(r,1);
/*
		switch(r)
		{
case rm_main_menu:				new_sound = snd_main_menu; break
case rm_settings:				new_sound = snd_main_menu; break
case rm_mapa:					new_sound = old_sound; break

case rm_bakery :				new_sound = noone; break
case rm_food_shop :				new_sound = noone; break
case rm_indoor_rival_station :	new_sound = snd_rivalstation; break
case rm_street_first_side :		new_sound = snd_rivalstation; break
case rm_street_second_side :	new_sound = snd_rivalstation; break
case rm_tri_kalynky :			new_sound = noone; break
case rm_tri_kalynky_boss :		new_sound = noone; break

case rm_fishing :						new_sound = noone; break
case rm_zoomagazine :					new_sound = noone; break
case rm_okorochok_indoor :				new_sound = snd_Bazar; break
case rm_storage :						new_sound = noone; break
case rm_tech :							new_sound = noone; break
case rm_fish_and_bazaar :				new_sound = snd_Bazar; break
case rm_street_container :				new_sound = snd_Bazar; break
case rm_street_magazine_tech_storage :	new_sound = snd_Bazar; break
case rm_garage_gg :						new_sound = noone; break
case rm_home_gg :						new_sound = snd_Bazar; break
case rm_home_gg_inside :				new_sound = noone; break
case rm_home_gg_inside_kitchen :		new_sound = noone; break

case rm_cinema_inside :			new_sound = noone; break
case rm_cinema_l :				new_sound = noone; break
case rm_cinema_r :				new_sound = noone; break
case rm_hotel_inside :			new_sound = noone; break
case rm_hotel_rooms :			new_sound = noone; break
case rm_kitchen :				new_sound = noone; break
case rm_restraunt :				new_sound = noone; break
case rm_room22 :				new_sound = noone; break
case rm_police :				new_sound = snd_center; break
case rm_police_inside :			new_sound = noone; break
case rm_police_inside_boss :	new_sound = noone; break
case rm_culture_hall_l :		new_sound = noone; break
case rm_culture_hall_r :		new_sound = noone; break
case rm_culture_inside :		new_sound = noone; break
case rm_fasfood :				new_sound = noone; break
case rm_center :				new_sound = snd_center; break
case rm_center_left :			new_sound = snd_center; break
case rm_center_right :			new_sound = snd_center; break

case rm_home_manda :	 new_sound = noone; break
case rm_home_entrance :	 new_sound = noone; break
case rm_ieghova_inside : new_sound = noone; break
case rm_south :			 new_sound = snd_Tyhlyanka ; break
case rm_box_inside :	 new_sound = noone; break
case rm_sport_centre :	 new_sound = snd_Tyhlyanka; break
case rm_sport_inside :	 new_sound = noone; break
case rm_bibliotheka :	 new_sound = noone; break
case rm_hastronom_tukh : new_sound = noone; break
case rm_north :			 new_sound = snd_Tyhlyanka; break
case rm_school :		 new_sound = snd_Tyhlyanka; break

}*/
	if 	old_sound != new_sound and old_sound != noone audio_sound_gain(old_sound,0,gain_decrease)
	
	}
}