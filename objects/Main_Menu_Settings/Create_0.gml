//if(!global.pause) exit;
//global.pause = false;
window_set_cursor(cr_none);
//view_widths = camera_get_view_width(view_camera[0])/2// room_width/2;
//view_heights = camera_get_view_height(view_camera[0])/2//room_height/2;
room_width = global.res_width;
room_height = global.res_height;
view_widths = room_width/2;
view_heights = room_height/2;
//global.key_revert =  keyboard_check_pressed(ord("X"));
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.key_down = vk_down;

if (audio_is_playing(snd_car_ride))
{
	audio_stop_sound(snd_car_ride);
}
enum main_menu_page {
	main,
	settings,
	audio,
	graphics,
	controls,
	language,
	height
}

enum main_menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

//створення сторінок меню
	var fnt2 = draw_get_font()
var sz2=draw_set_font(menu_font)
ds_menu_main = create_menu_page(
 [scr_json_lang(global.LANGUAGE,"settings5"), main_menu_element_type.script_runner, new_game],
 [scr_json_lang(global.LANGUAGE,"settings6"), main_menu_element_type.script_runner, loading],
 [scr_json_lang(global.LANGUAGE,"settings7"), main_menu_element_type.script_runner, settings_room],
 [scr_json_lang(global.LANGUAGE,"settings8"), main_menu_element_type.script_runner, link],
 [scr_json_lang(global.LANGUAGE,"settings9"), main_menu_element_type.script_runner, exit_game]
);

ds_settings = create_menu_page(
 ["Audio"/*, menu_element_type.page_transfer, menu_page.audio*/],
 ["Master", main_menu_element_type.slider, change_volume, 0.5, [0,1]],
 ["Graphics"/*, menu_element_type.page_transfer, menu_page.graphics*/],
 ["Resolution", main_menu_element_type.shift, change_resolution, 0, ["384 x 216", "768 x 432", "1152 x 648", "1680 x 1050", "1920 x 1080"]],
 ["Window mode", main_menu_element_type.toggle, change_window_mode, 1, ["Windowed", "Fullscreen"]],
 ["Back", main_menu_element_type.page_transfer, main_menu_page.main],
);

ds_menu_audio = create_menu_page(
 ["Master", main_menu_element_type.slider, change_volume, 0.5, [0,1]],
 ["Sounds", main_menu_element_type.slider, change_volume, 0.2, [0,1]],
 ["Music", main_menu_element_type.slider, change_volume, 1, [0,1]],
 ["Back", main_menu_element_type.page_transfer, main_menu_page.settings],
);

ds_graphics = create_menu_page(
 ["Resolution", main_menu_element_type.shift, change_resolution, 0, ["384 x 216", "768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]],
 ["Window mode", main_menu_element_type.toggle, change_window_mode, 1, ["Windowed", "Fullscreen"]],
 ["Back", main_menu_element_type.page_transfer, main_menu_page.settings],
);

page = 0;

menu_pages = [ds_menu_main, ds_settings, ds_menu_audio, ds_graphics]

var i = 0, array_len = array_length_1d(menu_pages);
 repeat(array_len){
	menu_option[i] = 0;
	i++;
 }
 
 inputting = false;

//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////МЕНЮ НАЛАШТУВАНЬ/////////////////////////////////////////

enum menu_main_pages {
	main,
	settings,
	audio,
	graphics,
	controls,
	language,
	height
}

enum menu_element_typess {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

var rezolution = global.rezolution;
var screenmode = global.fullscreen;

//створення сторінок меню
var lang;
if(global.LANGUAGE == "ua") lang = 1;
else lang = 0;

 
 if(lang == 1)
 {
	ds_menu_settings = create_menu_page(
	 ["Музика", menu_element_typess.slider, scr_change_music_vol, global.Fon_sound_gain, [0,1]],
	 ["Звуки", menu_element_typess.slider, scr_change_sound_vol, global.System_gain, [0,1]],
	 ["Розширення", menu_element_typess.shift, change_resolution, rezolution, ["1280х1024", "1680x1050", "1920x1080"]],
	 ["Режим екрану", menu_element_typess.shift, change_window_mode, screenmode, ["Вікно >>", "<< Повний екран"]],
	 ["Мова", menu_element_typess.shift, change_language, lang, ["Англійська >>", "<< Українська "]],
	 ["<<< Назад", menu_element_typess.script_runner, back_menu_from_settings]
	);
 }
 if(lang == 0)
 {
	ds_menu_settings = create_menu_page(
	 ["Music", menu_element_typess.slider, scr_change_music_vol, global.Fon_sound_gain, [0,1]],
	 ["Sounds", menu_element_typess.slider, scr_change_sound_vol, global.System_gain, [0,1]],
	 ["Rezolution", menu_element_typess.shift, change_resolution, rezolution, ["1280х1024", "1680x1050", "1920x1080"]],
	 ["Screen mode", menu_element_typess.shift, change_window_mode, screenmode, ["Window >>", "<< Fullscreen"]],
	 ["Language", menu_element_typess.shift, change_language, lang, ["English >>", "<< Ukrainian "]],
	 ["<<< Back", menu_element_typess.script_runner, back_menu_from_settings]
	);
 }

pages = 0;

menu_pagess = [ds_menu_settings]

var i = 0, array_len = array_length_1d(menu_pagess);
 repeat(array_len){
	menu_options[i] = 0;
	i++;
 }
 
 inputtings = false;
 
 ds_grid = menu_pagess[pages];
ds_height = ds_grid_height(ds_grid);