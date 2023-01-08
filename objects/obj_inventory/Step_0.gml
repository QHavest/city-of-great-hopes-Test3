





if (global.map or global.pause or !global.dialog_end or global.shop or global.diary){
	inv_UI_x_closed = inv_UI_x_closed_static;
	show_inventory = false;
	slots_x = inv_UI_x_closed_static + (72 * scale);
	frame_x = inv_UI_x_closed_static + (72 * scale);
	exit;
}

if(keyboard_check_pressed(ord("I")) and alarm[0] < 40){
	show_inventory = !show_inventory;
	alarm[0] = 60;
}

if (show_inventory){
	inv_UI_x_closed = lerp(inv_UI_x_closed, inv_UI_x_opened_static, 0.1);
	inv_UI_x_opened = inv_UI_x_opened_static;
	slots_x = inv_UI_x_closed + (72 * scale);
	alarm[0] -= 1;
}
if (!show_inventory){
	if(inv_UI_x_closed != inv_UI_x_closed_static){
	inv_UI_x_closed = lerp(inv_UI_x_opened, inv_UI_x_closed_static, 0.1);
	inv_UI_x_opened = inv_UI_x_closed;
	slots_x = inv_UI_x_closed + (72 * scale);
	frame_x = inv_UI_x_closed + (72 * scale);
	frame_y = inv_UI_y + (105 * scale);
	count_slot_pos = 0;
	alarm[0] -= 1;
	}
}

if (alarm[0] > 0){ frame_x = inv_UI_x_closed + (72 * scale);}

if(show_inventory = false) exit;
	
if(keyboard_check_pressed(vk_right) && alarm[0] < 0){
		frame_x = frame_x + ((cell_size + buffer_btw_slots));
		if (count_slot_pos == 4){
			frame_y = frame_y + ((cell_size + buffer_btw_slots));
			frame_x = inv_UI_x_closed + (72 * scale);
			}
		if (count_slot_pos == 9){
			frame_y = frame_y - (cell_size + buffer_btw_slots);
			frame_x = inv_UI_x_closed + (72 * scale);
			count_slot_pos = -1;
			}
		count_slot_pos ++;
		audio_play_sound(snd_search,5,0,global.System_gain)
		}
if(keyboard_check_pressed(vk_left) && alarm[0] < 0){
		if (count_slot_pos == 0){
			frame_y = frame_y + (cell_size + buffer_btw_slots);
			frame_x = inv_UI_x_closed + (72 * scale) + ((cell_size + buffer_btw_slots) * 5);
			count_slot_pos = 10;
			}
		if (count_slot_pos == 5){
			frame_y = frame_y - (cell_size + buffer_btw_slots);
			frame_x = inv_UI_x_closed + (72 * scale) + ((cell_size + buffer_btw_slots) * 5);
			count_slot_pos = 5;
			}
		frame_x = frame_x - (cell_size + buffer_btw_slots);
		count_slot_pos --;
		audio_play_sound(snd_search,5,0,global.System_gain)
		}
if(keyboard_check_pressed(vk_enter))
{
	global.ds_inventory[# 0, count_slot_pos] = 0;
	audio_play_sound(snd_op_accept,5,0,global.System_gain)
	show_debug_message("sound_scam");
}



