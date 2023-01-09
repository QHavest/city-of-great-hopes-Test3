//if(!global.pause) exit;

global.pause = false;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

//global.key_revert =  keyboard_check_pressed(ord("X"));
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.key_down = vk_down;

enum menu_page {
	main,
	settings,
	savings,
	audio,
	graphics,
	controls,
	language,
	height
}


enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input, 
}

//створення сторінок меню
//	var fnt2 = draw_get_font()
//var sz2=draw_set_font(menu_font)
ds_menu_main = create_menu_page(
 [spr_continue_ukr_d, menu_element_type.script_runner, resume_game],
 [spr_savings_ukr_d, menu_element_type.page_transfer, menu_page.savings],
 [spr_settings_ukr_d, menu_element_type.page_transfer, menu_page.settings],
 [spr_main_menu_ukr_d, menu_element_type.script_runner, back_menu],
 [spr_exit_ukr_d, menu_element_type.script_runner, exit_game]
);

ds_settings = create_menu_page(
 [spr_audio2_ukr_d, menu_element_type.slider, change_volume, 0.5, [0,1]], // кнопка "загальне аудіо"
 [spr_sounds_ukr_d, menu_element_type.slider, change_volume, 0.5, [0,1]], // кнопка "звуки"
 [spr_music_ukr_d, menu_element_type.slider, change_volume, 0.5, [0,1]], // кнопка "музика"
 
 [spr_rez1_l, menu_element_type.script_runner, scr_rezolution_1], 
 [spr_rez2_l, menu_element_type.script_runner, scr_rezolution_2], 
 [spr_rez3_l, menu_element_type.script_runner, scr_rezolution_3],
 [spr_fullscreen_ukr_l, menu_element_type.script_runner, scr_fullscreen],
 [spr_windowmode_ukr_l, menu_element_type.script_runner, scr_windowmode]
);

ds_savings = create_menu_page(
 [spr_rez1_d, menu_element_type.script_runner, resume_game]
);

/*

ds_menu_audio = create_menu_page(
 ["Master", menu_element_type.slider, change_volume, 0.5, [0,1]],
 ["Sounds", menu_element_type.slider, change_volume, 0.2, [0,1]],
 ["Music", menu_element_type.slider, change_volume, 1, [0,1]],
 ["Back", menu_element_type.page_transfer, menu_page.settings],
);

ds_graphics = create_menu_page(
 ["Resolution", menu_element_type.shift, change_resolution, 0, ["384 x 216", "768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]],
 ["Window mode", menu_element_type.toggle, change_window_mode, 1, ["Fullscreen", "Windowed"]],
 ["Back", menu_element_type.page_transfer, menu_page.settings],
);

*/


page = 0;

menu_pages = [ds_menu_main, ds_settings, ds_savings /*ds_menu_audio, ds_graphics*/]

var i = 0, array_len = array_length_1d(menu_pages);
 repeat(array_len){
	menu_option[i] = 0;
	i++;
 }
 
 inputting = false;
 
rez_act = 1;
fullscreen = false;
settings_savings = true;