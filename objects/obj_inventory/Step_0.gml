if (global.map or global.pause or !global.dialog_end or global.shop){
	inv_UI_x_closed = inv_UI_x_closed_static;
	show_inventory = false;
	exit;
}


if (keyboard_check_pressed(ord("I"))){
	show_inventory = !show_inventory; 
}

if (show_inventory){
	inv_UI_x_closed = lerp(inv_UI_x_closed, inv_UI_x_opened_static, 0.1);
	inv_UI_x_opened = inv_UI_x_opened_static;
	slots_x = inv_UI_x_closed + (72 * scale);
	if(keyboard_check_pressed(vk_right)){
		frame_ix = frame_ii mod inv_slots_w;
		frame_iy = frame_ii div inv_slots_w;
		frame_x = inv_UI_x_closed + (72 * scale) + ((cell_size + buffer_btw_slots)*frame_ix);
		if(frame_ii = 6) frame_y = frame_y + ((cell_size + buffer_btw_slots)*frame_iy);
		if(frame_ii = 10) frame_ii = 0; frame_y = frame_y + ((cell_size + buffer_btw_slots)*frame_iy);
		frame_ii++;
	}
}

if (!show_inventory || global.shop = true){
	if(inv_UI_x_closed != inv_UI_x_closed_static){
	inv_UI_x_closed = lerp(inv_UI_x_opened, inv_UI_x_closed_static, 0.1);
	inv_UI_x_opened = inv_UI_x_closed;
	slots_x = inv_UI_x_closed + (72 * scale);
	frame_x = inv_UI_x_closed + (72 * scale);
	}
}



