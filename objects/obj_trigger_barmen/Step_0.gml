if  ((place_meeting(x, y, obj_dim_player1) or place_meeting(x, y, obj_dim_player2)))
{
	drowings = true;
}
else drowings = false;


if(keyboard_check_pressed(ord("E")) and drowings = true and start == true)
{
	start = false;
	if(number2 >= 4 or global.noRest == 2) scr_create_textbox("go_home_alcoholics");
	if(number2 < 4 and global.noRest != 2)	scr_create_textbox("barmen2");
}

if(!instance_exists(obj_dim_textbox_gui)) {start = true;}

