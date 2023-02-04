// Script assets have changed for v2.3.0 see
/// @param room
/// @param var_num
/* variable under numbers:
1 - sound
2 - district (0 -rival; 1- Bazar; 2- Center; 3 - Tyhlianka)
3 - indor (true - indor; false - outdor)
4 - for Margaryta
*/
function scr_rooms_variables(r, name){
switch(r)
		{
case rm_main_menu:	
	switch(name)
	{	
	case 1: return snd_main_menu  break
	case 2: return 0 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_settings:		
switch(name)
	{	
	case 1: return snd_main_menu  break
	case 2: return 0 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_mapa:	
	switch(name)
	{	
	case 1: return music_room.old_sound  break
	case 2: return 0 break
	case 3: return 0 break
	case 4: break
	}
break
#region (Rival_station)
case rm_bakery :
	switch(name)
	{	
	case 1: return noone break
	case 2: return 0 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_food_shop :	
	switch(name)
	{	
	case 1: return noone break
	case 2: return 0 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_indoor_rival_station :
	switch(name)
	{	
	case 1: if global.day return snd_rivalstation else return snd_riv_stat_night break
	case 2: return 0 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_street_first_side :	
	switch(name)
	{	
	case 1: if global.day return snd_rivalstation else return snd_riv_stat_night break
	case 2: return 0 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_street_second_side :
	switch(name)
	{	
	case 1: if global.day return snd_rivalstation else return snd_riv_stat_night break
	case 2: return 0 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_tri_kalynky :		
	switch(name)
	{	
	case 1: return noone break
	case 2: return 0 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_tri_kalynky_boss :	
	switch(name)
	{	
	case 1: return noone break
	case 2: return 0 break
	case 3: return 1 break
	case 4: break
	}
break
#endregion
#region (Bazar)
case rm_fishing :			
	switch(name)
	{	
	case 1: return noone break
	case 2: return 1 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_zoomagazine :		
	switch(name)
	{	
	case 1: return noone break
	case 2: return 1 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_okorochok_indoor :	
	switch(name)
	{	
	case 1: if global.day return snd_Bazar else return snd_bazar_night break
	case 2: return 1 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_storage :			
	switch(name)
	{	
	case 1: return noone break
	case 2: return 1 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_tech :				
	switch(name)
	{	
	case 1: return noone break
	case 2: return 1 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_fish_and_bazaar :	
	switch(name)
	{	
	case 1: if global.day return snd_Bazar else return snd_bazar_night break
	case 2: return 1 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_street_container :	
	switch(name)
	{	
	case 1: if global.day return snd_Bazar else return snd_bazar_night break
	case 2: return 1 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_street_magazine_tech_storage :	
	switch(name)
	{	
	case 1: if global.day return snd_Bazar else return snd_bazar_night break
	case 2: return 1 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_garage_gg :						
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 1 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_home_gg :						
	switch(name)
	{	
	case 1: if global.day return snd_Bazar else return snd_bazar_night break
	case 2: return 1 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_home_gg_inside :				
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 1 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_home_gg_inside_kitchen :		
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 1 break
	case 3: return 1 break
	case 4: break
	}
break
#endregion

#region (Center)
case rm_cinema_inside :				
switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_cinema_l :				
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_cinema_r :				
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_hotel_inside :			
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_hotel_rooms :			
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_kitchen :				
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_restraunt :				
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_room22 :				
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_police :				
	switch(name)
	{	
	case 1: if global.day return snd_center; else return snd_Center_night; break
	case 2: return 2 break
	
	
	
	case 3: return 0 break
	case 4: break
	}
break
case rm_police_inside :			
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_police_inside_boss :	
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_culture_hall_l :		
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_culture_hall_r :		
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_culture_inside :		
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_fasfood :				
	switch(name)
	{	
	case 1: return noone break
	case 2: return 2 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_center :				
	switch(name)
	{	
	case 1: if global.day return snd_center else return snd_Center_night break
	case 2: return 2 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_center_left :			
	switch(name)
	{	
	case 1: if global.day return snd_center else return snd_Center_night break
	case 2: return 2 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_center_right :			
	switch(name)
	{	
	case 1: if global.day return snd_center else return snd_Center_night break
	case 2: return 2 break
	case 3: return 0 break
	case 4: break
	}
break
#endregion
#region (Tyhlianka)
case rm_home_manda :	
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 3 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_home_entrance :	 
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 3 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_ieghova_inside : 
	switch(name)
	{	
	case 1: return noone  break
	case 2: return 3 break
	case 3: return 1 break
	case 4: break
	}
break
case rm_south :			 	switch(name)
	{	
	case 1: if global.day return snd_Tyhlyanka else return snd_tyhlya_night break
	case 2: return 3 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_box_inside :	 
	switch(name)
	{	
	case 1: return noone break
	case 2: return 3 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_sport_centre :	 
	switch(name)
	{	
	case 1: if global.day return snd_Tyhlyanka else return snd_tyhlya_night break
	case 2: return 3 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_sport_inside :	 
	switch(name)
	{	
	case 1: return noone break
	case 2: return 3 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_bibliotheka :	 
	switch(name)
	{	
	case 1: return noone break
	case 2: return 3 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_hastronom_tukh : 
	switch(name)
	{	
	case 1: return noone break
	case 2: return 3 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_north :			 
	switch(name)
	{	
	case 1: if global.day return snd_Tyhlyanka else return snd_tyhlya_night break
	case 2: return 3 break
	case 3: return 0 break
	case 4: break
	}
break
case rm_school :		 
	switch(name)
	{	
	case 1: if global.day return snd_Tyhlyanka else return snd_tyhlya_night break
	case 2: return 3 break
	case 3: return 0 break
	case 4: break
	}
break
case Room61:	
	switch(name)
	{	
	case 1: return snd_battle_music  break
	case 2: return 0 break
	case 3: return 1 break
	case 4: break
	}
break
//case seq_scena_6 :		 
//	switch(name)
//	{	
//	case 1: return noone break
//	case 2: break
//	case 3: break
//	case 4: break
//	}
//break
//case seq_scena_7:		 
//	switch(name)
//	{	
//	case 1: return snd_center break
//	}
//break
//case seq_scena_8:		 
//	switch(name)
//	{	
//	case 1: return snd_Bazar break
//	}
//break
//case seq_scena_9_1:		 
//	switch(name)
//	{	
//	case 1: return snd_bazar_2 break
//	}
//break
//case seq_scena_9_2:		 
//	switch(name)
//	{	
//	case 1: return snd_bazar_2 break
//	}
//break
#endregion
}
}