if  ((place_meeting(x, y, obj_dim_player1) or place_meeting(x, y, obj_dim_player2)))
{
	drowings = true;
}
else drowings = false;




//запуск переіщення
	if(keyboard_check_pressed(ord("E")) and drowings = true and start == true)
	{
		start = false;
		show_debug_message(number2);
		show_debug_message(number2);
		show_debug_message(number2);
		show_debug_message(number2);
		if(number2 >= 4 or global.noRest == 2) scr_create_textbox("go_home_alcoholics");
		if(number2 < 3 and global.noRest != 2)	scr_create_textbox("barmen2");
	}
if(instance_exists(obj_dim_textbox_gui)) {start = false; global.shop = true}
else {start = true; global.shop = false}
