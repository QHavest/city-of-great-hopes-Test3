
if (global.map or global.pause or !global.dialog_end or global.shop or global.diary){
	inv_UI_x_closed = inv_UI_x_closed_static;
	show_inventory = false;
	slots_x = inv_UI_x_closed_static + (87 * scale);
	frame_x = inv_UI_x_closed_static + (87 * scale);
	exit; 
}

if(keyboard_check_pressed(ord("I")) and alarm[0] < 40){
	show_inventory = !show_inventory;
	alarm[0] = 60;
	audio_play_sound(snd_inventory, 9,0, global.System_gain);
}

if (show_inventory){
	inv_UI_x_closed = lerp(inv_UI_x_closed, inv_UI_x_opened_static, 0.1);
	inv_UI_x_opened = inv_UI_x_opened_static;
	slots_x = inv_UI_x_closed + (87 * scale);
	alarm[0] -= 1;
}
if (!show_inventory){
	if(inv_UI_x_closed != inv_UI_x_closed_static){
	inv_UI_x_closed = lerp(inv_UI_x_opened, inv_UI_x_closed_static, 0.1);
	inv_UI_x_opened = inv_UI_x_closed;
	slots_x = inv_UI_x_closed + (87 * scale);
	frame_x = inv_UI_x_closed + (87 * scale);
	frame_y = inv_UI_y + (147 * scale);
	alarm[0] -= 1;
	}
}

if (alarm[0] > 0){ frame_x = inv_UI_x_closed + (87 * scale);} //??????????

////////////////////////////Розділ керування клітинками
if(show_inventory = false) exit;

// переключення між клітинками

if(keyboard_check_pressed(vk_up) && alarm[0] < 0 && frame_yy = 1){
	frame_yy = 0;
	frame_y = inv_UI_y + (147 * scale);
}
if(keyboard_check_pressed(vk_down) && alarm[0] < 0 && frame_yy = 0){
	frame_yy = 1;
	frame_y = inv_UI_y + (147 * scale) + 81;
}

if(keyboard_check_pressed(vk_right) && alarm[0] < 0){
		if(frame_xx != 4){
			frame_xx ++;
			frame_x = frame_x + ((cell_size + buffer_btw_slots));
		}
		audio_play_sound(snd_search,5,0,global.System_gain)
		}
if(keyboard_check_pressed(vk_left) && alarm[0] < 0){
		if(frame_xx != 0){
			frame_xx --;
			frame_x = frame_x - ((cell_size + buffer_btw_slots));
		}
		audio_play_sound(snd_search,5,0,global.System_gain)
		}
	
if(keyboard_check_pressed(vk_enter))
{
	if(global.ds_inventory[# 0, frame[frame_yy, frame_xx]] < 38){
	global.ds_inventory[# 0, frame[frame_yy, frame_xx]] = 0;
	audio_play_sound(snd_op_accept,5,0,global.System_gain)
	}
}



