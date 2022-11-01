//if(!global.pause) exit;

//global.pause = false;
view_widths = /*camera_get_view_width(view_camera[0])*/ room_width/2;
view_heights = /*camera_get_view_height(view_camera[0])*/room_height/2;

//global.key_revert =  keyboard_check_pressed(ord("X"));
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.key_down = vk_down;

enum main_menu_savings {
	save_1,
	save_2,
	save_3,
	save_4,
	save_5,
	save_6,
	save_7,
}

_savings = [save_1, save_2, save_3, save_4, save_5, save_6, save_7];

var i = 0, array_len = array_length_1d(_savings);
 repeat(array_len){
	menu_option[i] = 0;
	i++;
 }
 
 inputting = false;
