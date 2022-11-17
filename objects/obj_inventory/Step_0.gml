if (keyboard_check_pressed(ord("I"))){
	show_inventory = !show_inventory;
	alarm[0] = 90;
}

if (global.map or global.pause or !global.dialog_end or global.shop or !show_inventory){
	inv_UI_x_closed = inv_UI_x_closed_static;
	show_inventory = false;
	exit;
}

if (show_inventory){
	inv_UI_x_closed = lerp(inv_UI_x_closed, inv_UI_x_opened_static, 0.1);
	inv_UI_x_opened = inv_UI_x_opened_static;
	slots_x = inv_UI_x_closed + (72 * scale);
	alarm[0] -= 1;
}

if (alarm[0] > 0){ frame_x = inv_UI_x_closed + (72 * scale);}
	
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
		}
		
if(keyboard_check_pressed(vk_enter))
{
	global.ds_inventory[# 0, count_slot_pos] = 0;
}

if (!show_inventory || global.shop = true){
	if(inv_UI_x_closed != inv_UI_x_closed_static){
	inv_UI_x_closed = lerp(inv_UI_x_opened, inv_UI_x_closed_static, 0.1);
	inv_UI_x_opened = inv_UI_x_closed;
	slots_x = inv_UI_x_closed + (72 * scale);
	frame_x = inv_UI_x_closed + (72 * scale);
	frame_y = inv_UI_y + (105 * scale);
	count_slot_pos = 0;
	}
}



