// коли наступає утопирок
if(place_meeting(x, y, obj_dim_player1) and drowings = true) 
{	
	if (keyboard_check_pressed(ord("E")) and global.dialog_end and !global.shop )
	{
		scr_create_textbox("Souvenir");
		drowings = false;
	}

	draw_sprite_ext(help_sprite, -1,  obj_dim_player1.x + help_x, obj_dim_player1.y + help_y, 0.5, 0.5, 0, -1, 1)

}

// коли наступає крис
if( place_meeting(x, y, obj_dim_player2) and  drowings = true) 
{
	if (keyboard_check_pressed(ord("E")) and global.dialog_end and !global.shop )
	{
		scr_create_textbox(text_id);
		drowings = false;
	}
	
	draw_sprite_ext(help_sprite, -1,  obj_dim_player2.x + help_x, obj_dim_player2.y + help_y, 0.5, 0.5, 0, -1, 1)
}

