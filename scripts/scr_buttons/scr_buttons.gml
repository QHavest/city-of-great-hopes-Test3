// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_buttons(arg){
	switch(arg)
	{
		// меню паузи
		case spr_continue_ukr_d: return spr_continue_ukr_l; break;
		case spr_savings_ukr_d: return spr_savings_ukr_l; break;
		case spr_main_menu_ukr_d: return spr_main_menu_ukr_l; break;
		case spr_settings_ukr_d: return spr_settings_ukr_l; break;
		case spr_exit_ukr_d: return spr_exit_ukr_l; break;
		
		// налаштування
		case spr_audio2_ukr_d: return spr_audio2_ukr_l; break;
		case spr_sounds_ukr_d: return spr_sounds_ukr_l; break;
		case spr_music_ukr_d: return spr_music_ukr_l; break;
		
		case spr_rez1_l: return spr_rez1_l_act;
		case spr_rez1_d: return spr_rez1_d_act;
		
		case spr_rez2_l: return spr_rez2_l_act;
		case spr_rez2_d: return spr_rez2_d_act;
		
		case spr_rez3_l: return spr_rez3_l_act;
		case spr_rez3_d: return spr_rez3_d_act;
		
		case spr_fullscreen_ukr_l: return spr_fullscreen_ukr_l_act;
		case spr_fullscreen_ukr_d: return spr_fullscreen_ukr_d_act;
		
		case spr_windowmode_ukr_l: return spr_windowmode_ukr_l_act;
		case spr_windowmode_ukr_d: return spr_windowmode_ukr_d_act;
	}
}