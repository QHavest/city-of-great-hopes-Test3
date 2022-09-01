//if(!global.pauses) exit;

input_up_p = keyboard_check_pressed(global.key_up);
input_down_p = keyboard_check_pressed(global.key_down);
input_enter_p = keyboard_check_pressed(global.key_enter);
esc_paus = keyboard_check_pressed(vk_escape);
var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

if(inputting){
switch(ds_grid[# 1, menu_option[page]]){
		case menu_element_types.shift:
			var hinput = keyboard_check_pressed(global.key_right) -  keyboard_check_pressed(global.key_left);
			if(hinput != 0){
				
				ds_grid[# 3,menu_option[page]] += hinput;
				ds_grid[# 3,menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, array_length_1d(ds_grid[# 4, menu_option[page]])-1);
			}
		break;
		case menu_element_types.slider:
			switch(menu_option[page]){
				case 0: if(!audio_is_playing(snd_main_menu)) {audio_play_sound(snd_main_menu,1, false);} break;
				case 1:
				case 2:
				
			}
			var hinput = keyboard_check(global.key_right) -  keyboard_check(global.key_left);
			if(hinput != 0){
				
				ds_grid[# 3,menu_option[page]] += hinput*0.01;
				ds_grid[# 3,menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
				script_execute(ds_grid[# 2,menu_option[page]], ds_grid[# 3,menu_option[page]]);
			}
			break;
		case menu_element_types.toggle:
			var hinput = keyboard_check_pressed(global.key_right) -  keyboard_check_pressed(global.key_left);
			if(hinput != 0){
				
				ds_grid[# 3,menu_option[page]] += hinput;
				ds_grid[# 3,menu_option[page]] = clamp(ds_grid[# 3, menu_option[page]], 0, 1);
			}
		break;
		case menu_element_types.input:
			break;
}
} else {
	var ochange = input_down_p - input_up_p;
	if(ochange !=0){
		menu_option[page] += ochange;
		if(menu_option[page] > ds_height-1) { menu_option[page] = 0; }
		if(menu_option[page] < 0) { menu_option[page] = ds_height -1; }
	}
}
if(input_enter_p){
	
	switch(ds_grid[# 1, menu_option[page]]){
		case menu_element_types.script_runner: script_execute(ds_grid[# 2,menu_option[page]]); break;
		case menu_element_types.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
		case menu_element_types.shift:
		case menu_element_types.slider:
		case menu_element_types.toggle: if(inputting) { script_execute(ds_grid[# 2,menu_option[page]], ds_grid[# 3,menu_option[page]]);};
		case menu_element_types.input:
			inputting = !inputting;
			
			break;
	}
	//audio

}