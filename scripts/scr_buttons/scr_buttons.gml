// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_buttons(arg, num){
	if(num == 1)
	{
		switch(arg)
		{
			// меню паузи
			case spr_continue_ukr_d: return spr_continue_ukr_l; break;
			case spr_savings_ukr_d: return spr_savings_ukr_l; break;
			case spr_main_menu_ukr_d: return spr_main_menu_ukr_l; break;
			case spr_settings_ukr_d: return spr_settings_ukr_l; break;
			case spr_exit_ukr_d: return spr_exit_ukr_l; break;
		
			case spr_continue_eng_d: return spr_continue_eng_l; break;
			case spr_savings_eng_d: return spr_savings_eng_l; break;
			case spr_main_menu_eng_d: return spr_main_menu_eng_l; break;
			case spr_settings_eng_d: return spr_settings_eng_l; break;
			case spr_exit_eng_d: return spr_exit_eng_l; break;
		}
	}
	
	if(num == 2)
	{
		switch(arg)
		{
			// налаштування
			case spr_audio2_ukr_d: return spr_audio2_ukr_l; break;
			case spr_sounds_ukr_d: return spr_sounds_ukr_l; break;
			case spr_music_ukr_d: return spr_music_ukr_l; break;
			case spr_audio2_eng_d: return spr_audio2_eng_l; break;
			case spr_sound_eng_d: return spr_sound_eng_l; break;
			case spr_music_eng_d: return spr_music_eng_l; break;
		
			case "Загальне аудіо": return spr_audio2_ukr_l; break;
			case "Звуки": return spr_sounds_ukr_l; break;
			case "Музика": return spr_music_ukr_l; break;
			case "General audio": return spr_audio2_eng_l; break;
			case "Sounds": return spr_sound_eng_l; break;
			case "Music": return spr_music_eng_l; break;
		
			case spr_rez1_l: return spr_rez1_l_act;
			case spr_rez1_d: return spr_rez1_d_act;
		
			case spr_rez2_l: return spr_rez2_l_act;
			case spr_rez2_d: return spr_rez2_d_act;
		
			case spr_rez3_l: return spr_rez3_l_act;
			case spr_rez3_d: return spr_rez3_d_act;
		
			case "1280х1024": return spr_rez_new;
			//case spr_rez1_d: return spr_rez1_d_act;
		
			case "1680х1050": return spr_rez_new;
			//case spr_rez2_d: return spr_rez2_d_act;
		
			case "1920х1080": return spr_rez_new;
			//case spr_rez3_d: return spr_rez3_d_act;
		
			case spr_fullscreen_ukr_l: return spr_fullscreen_ukr_l_act;
			case spr_fullscreen_ukr_d: return spr_fullscreen_ukr_d_act;
			case spr_fullscreen_eng_l: return spr_fullscreen_eng_l_act;
			case spr_fullscreen_eng_d: return spr_fullscreen_eng_d_act;
			
			case "Fullscreen": return spr_fullscreen_eng_d_act;
			case "Повноекранний режим": return spr_fullscreen_ukr_l_act;
		
			case spr_windowmode_ukr_l: return spr_windowmode_ukr_l_act;
			case spr_windowmode_ukr_d: return spr_windowmode_ukr_d_act;
			case spr_windowmode_eng_l: return spr_windowmode_eng_l_act;
			case spr_windowmode_eng_d: return spr_windowmode_eng_d_act;
			
			//case "In window": return spr_windowmode_eng_d_act;
			case "In window": return spr_windowmode_eng_l_act;
			case "Віконний режим": return spr_windowmode_ukr_l_act;
		}
	}
	
	if(num!=1 and num!=2)
	{
		switch(arg)
		{
			// меню паузи
			case spr_continue_ukr_d: return spr_continue_ukr_l; break;
			case spr_savings_ukr_d: return spr_savings_ukr_l; break;
			case spr_main_menu_ukr_d: return spr_main_menu_ukr_l; break;
			case spr_settings_ukr_d: return spr_settings_ukr_l; break;
			case spr_exit_ukr_d: return spr_exit_ukr_l; break;
		
			case spr_continue_eng_d: return spr_continue_eng_l; break;
			case spr_savings_eng_d: return spr_savings_eng_l; break;
			case spr_main_menu_eng_d: return spr_main_menu_eng_l; break;
			case spr_settings_eng_d: return spr_settings_eng_l; break;
			case spr_exit_eng_d: return spr_exit_eng_l; break;
		
			// налаштування
			case spr_audio2_ukr_d: return spr_audio2_ukr_l; break;
			case spr_sounds_ukr_d: return spr_sounds_ukr_l; break;
			case spr_music_ukr_d: return spr_music_ukr_l; break;
			case spr_audio2_eng_d: return spr_audio2_eng_l; break;
			case spr_sound_eng_d: return spr_sound_eng_l; break;
			case spr_music_eng_d: return spr_music_eng_l; break;
		
			case spr_rez1_l: return spr_rez1_l_act;
			case spr_rez1_d: return spr_rez1_d_act;
		
			case spr_rez2_l: return spr_rez2_l_act;
			case spr_rez2_d: return spr_rez2_d_act;
		
			case spr_rez3_l: return spr_rez3_l_act;
			case spr_rez3_d: return spr_rez3_d_act;
		
			case spr_fullscreen_ukr_l: return spr_fullscreen_ukr_l_act;
			case spr_fullscreen_ukr_d: return spr_fullscreen_ukr_d_act;
			case spr_fullscreen_eng_l: return spr_fullscreen_eng_l_act;
			case spr_fullscreen_eng_d: return spr_fullscreen_eng_d_act;
		
			case spr_windowmode_ukr_l: return spr_windowmode_ukr_l_act;
			case spr_windowmode_ukr_d: return spr_windowmode_ukr_d_act;
			case spr_windowmode_eng_l: return spr_windowmode_eng_l_act;
			case spr_windowmode_eng_d: return spr_windowmode_eng_d_act;
		}
	}
}