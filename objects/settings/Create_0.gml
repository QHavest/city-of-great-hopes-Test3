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
	input
}

//створення сторінок меню
var fnt = draw_get_font()
var sz=draw_set_font(menu_font)
ds_menu_main = create_menu_page(
 ["Resume", menu_element_type.script_runner, resume_game],
 ["Settings", menu_element_type.page_transfer, menu_page.settings],
 ["Main menu", menu_element_type.script_runner, back_menu],
 ["Exit", menu_element_type.script_runner, exit_game]
);

ds_settings = create_menu_page(
 ["Audio"/*, menu_element_type.page_transfer, menu_page.audio*/],
 ["Master", menu_element_type.slider, change_volume, 0.5, [0,1]],
 ["Graphics"/*, menu_element_type.page_transfer, menu_page.graphics*/],
 ["Resolution", menu_element_type.shift, change_resolution, 0, ["384 x 216", "768 x 432", "1152 x 648", "1680 x 1050", "1920 x 1080"]],
 ["Window mode", menu_element_type.toggle, change_window_mode, 1, ["Fullscreen", "Windowed"]],
 ["Back", menu_element_type.page_transfer, menu_page.main],
);

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

page = 0;

menu_pages = [ds_menu_main, ds_settings, ds_menu_audio, ds_graphics]

var i = 0, array_len = array_length_1d(menu_pages);
 repeat(array_len){
	menu_option[i] = 0;
	i++;
 }
 
 inputting = false;
