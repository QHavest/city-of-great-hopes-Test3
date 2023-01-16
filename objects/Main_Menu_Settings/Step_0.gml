//if(!global.pause) exit;
if(global.settings_open == 1) {exit;}

input_up_p = keyboard_check_pressed(global.key_up);
input_down_p = keyboard_check_pressed(global.key_down);
input_enter_p = keyboard_check_pressed(global.key_enter);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

if(inputting){

switch(ds_grid[# 1, menu_option[page]]){
		case main_menu_element_type.shift:
			var hinput = keyboard_check_pressed(global.key_right) -  keyboard_check_pressed(global.key_left);
			if(hinput != 0){
				ds_grid[# 3,menu_option[page]] += hinput;
				if ds_grid[# 3, menu_option[page]] == clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]])-1) audio_play_sound(snd_search,5,0,global.System_gain);
				ds_grid[# 3,menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]])-1);
			}
		break;
		case main_menu_element_type.slider:
			switch(menu_option[page]){
				case 0: break;
				case 1: break;
				case 2: break;
				
			}
			var hinput = keyboard_check(global.key_right) -  keyboard_check(global.key_left);
			if(hinput != 0){
				ds_grid[# 3,menu_option[page]] += hinput*0.01;
				if ds_grid[# 3, menu_option[page]] == clamp(ds_grid[# 3, menu_option[page]], 0, 1) audio_play_sound(snd_search,5,0,global.System_gain);
				ds_grid[# 3,menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
				script_execute(ds_grid[# 2,menu_option[page]], ds_grid[# 3,menu_option[page]]);
			}
			break;
		case main_menu_element_type.toggle:
			var hinput = keyboard_check_pressed(global.key_right) -  keyboard_check_pressed(global.key_left);
			if(hinput != 0){
				ds_grid[# 3,menu_option[page]] += hinput;
				if ds_grid[# 3, menu_option[page]] == clamp(ds_grid[# 3, menu_option[page]], 0, 1) audio_play_sound(snd_search,5,0,global.System_gain);
				ds_grid[# 3,menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
				//audio_play_sound(snd_search,1,0);
			}
		break;
		case main_menu_element_type.input:
			break;
}
} else {
	var ochange = input_down_p - input_up_p;
	if(ochange !=0){
		menu_option[page] += ochange;
		if(menu_option[page] > ds_height-1) { menu_option[page] = 0; }
		if(menu_option[page] < 0) { menu_option[page] = ds_height -1; }
		audio_play_sound(snd_search,5,0,global.System_gain);
	}
}
if(input_enter_p){
	audio_play_sound(snd_op_accept,5,0,global.System_gain);
	switch(ds_grid[# 1, menu_option[page]]){
		case main_menu_element_type.script_runner: script_execute(ds_grid[# 2,menu_option[page]]);persistent=false; break;
		case main_menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		case main_menu_element_type.shift:
		case main_menu_element_type.slider:
		case main_menu_element_type.toggle: if(inputting) { script_execute(ds_grid[# 2,menu_option[page]], ds_grid[# 3,menu_option[page]]);};
		case main_menu_element_type.input:
			inputting = !inputting;
			
			break;
	}
}
if global.settings_open instance_activate_object(Menu_settings);