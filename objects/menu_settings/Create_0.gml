//if(!global.pauses) exit;
//global.pauses = true;

//if(!global.settings_open) instance_deactivate_object(self);

//global.settings_open = 1
show_debug_message("Settings create")

//instance_deactivate_object(Main_Menu_Settings);
//global.view_width = camera_get_view_width(view_camera[0]);
//global.view_height = camera_get_view_height(view_camera[0]);


room_width = global.res_width;
room_height = global.res_height;
view_widths = room_width/2;
view_heights = room_height/2;
//view_widths = display_get_gui_width()/2;
//view_heights = display_get_gui_height()/2;
//global.key_revert =  keyboard_check_pressed(ord("X"));
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.key_down = vk_down;

enum menu_main_page {
	main,
	settings,
	audio,
	graphics,
	controls,
	language,
	height
}

enum menu_element_types {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

var rezolution = global.rezolution;
var screenmode = global.fullscreen;
//show_debug_message(string(screenmode) + " = screen")
//створення сторінок меню
var lang;
if(global.LANGUAGE == "ua") lang = 1;
else lang = 0;
 //show_debug_message("music = " + string(global.Fon_sound_gain));
 //show_debug_message("sound = " + string(global.System_gain));
 
 if(lang == 1)
 {
	ds_menu_main = create_menu_page(
	 ["Музика", menu_element_types.slider, scr_change_music_vol, global.Fon_sound_gain, [0,1]],
	 ["Звуки", menu_element_types.slider, scr_change_sound_vol, global.System_gain, [0,1]],
	 ["Розширення", menu_element_types.shift, change_resolution, rezolution, ["1280х1024", "1680x1050", "1920x1080"]],
	 ["Режим екрану", menu_element_types.shift, change_window_mode, screenmode, ["Вікно >>", "<< Повноекранний"]],
	 ["Мова", menu_element_types.shift, change_language, lang, ["Англійська >>", "<< Українська "]],
	 ["<<< Назад", menu_element_types.script_runner, back_menu_from_settings]
	);
 }
 if(lang == 0)
 {
	ds_menu_main = create_menu_page(
	 ["Music", menu_element_types.slider, scr_change_music_vol, global.Fon_sound_gain, [0,1]],
	 ["Sounds", menu_element_types.slider, scr_change_sound_vol, global.System_gain, [0,1]],
	 ["Rezolution", menu_element_types.shift, change_resolution, rezolution, ["1280х1024", "1680x1050", "1920x1080"]],
	 ["Screen mode", menu_element_types.shift, change_window_mode, screenmode, ["Window >>", "<< Fullscreen"]],
	 ["Language", menu_element_types.shift, change_language, lang, ["English >>", "<< Ukrainian "]],
	 ["<<< Back", menu_element_types.script_runner, back_menu_from_settings]
	);
 }
/*
ds_settings = create_menu_page(
 ["Audio"/*, menu_element_type.page_transfer, menu_page.audio],
 ["Master", menu_element_types.slider, change_volume, 0.5, [0,1]],
 ["Graphics"/*, menu_element_type.page_transfer, menu_page.graphics],
 ["Resolution", menu_element_types.shift, change_resolution, 0, ["384 x 216", "768 x 432", "1152 x 648", "1680 x 1050", "1920 x 1080"]],
 ["Window mode", menu_element_types.toggle, change_window_mode, 1, ["Windowed", "Fullscreen"]],

 ["Back", menu_element_types.page_transfer, menu_page.main],
);

ds_menu_audio = create_menu_page(
 ["Master", menu_element_types.slider, change_volume, 0.5, [0,1]],
 ["Sounds", menu_element_types.slider, change_volume, 0.2, [0,1]],
 ["Music", menu_element_types.slider, change_volume, 0.5, [0,1]],
 ["Back", menu_element_types.page_transfer, menu_page.settings],
);

ds_graphics = create_menu_page(
 ["Resolution", menu_element_types.shift, change_resolution, 0, ["384 x 216", "768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]],
 ["Window mode", menu_element_types.toggle, change_window_mode, 1, ["Windowed", "Fullscreen"]],
 ["Back", menu_element_types.page_transfer, menu_page.settings],
);
*/
page = 0;

menu_pages = [ds_menu_main/*, ds_settings, ds_menu_audio, ds_graphics*/]

var i = 0, array_len = array_length_1d(menu_pages);
 repeat(array_len){
	menu_option[i] = 0;
	i++;
 }
 
 inputting = false;
 
 ds_grid = menu_pages[page];
ds_height = ds_grid_height(ds_grid);
