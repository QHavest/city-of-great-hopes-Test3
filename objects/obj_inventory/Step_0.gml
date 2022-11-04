if (global.map or global.pause or global.shop or !global.dialog_end){
	show_inventory = false;
	inv_UI_x_closed = inv_UI_x_closed_static;
	exit;
}
if (keyboard_check_pressed(ord("I"))){
	show_inventory = !show_inventory; 
}

if (show_inventory){
inv_UI_x_closed = lerp(inv_UI_x_closed, inv_UI_x_opened_static, 0.1);
inv_UI_x_opened = inv_UI_x_opened_static
slots_x = inv_UI_x_closed + (83 * scale);
}

if (!show_inventory){
inv_UI_x_closed = lerp(inv_UI_x_opened, inv_UI_x_closed_static, 0.1);
inv_UI_x_opened = inv_UI_x_closed;
slots_x = inv_UI_x_closed + (83 * scale);
}
