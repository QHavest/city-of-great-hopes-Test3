// коли наступає утопирок
if start == true and place_meeting(x, y, obj_dim_player1) and drowings = true and obj_dim_player1.status=STATUS.ACTIVE
{	

	if(!sequence_exists(seq_restoraunt_barmen)) draw_sprite_ext(help_sprite, -1,  obj_dim_player1.x + help_x, obj_dim_player1.y + help_y, 0.5, 0.5, 0, -1, 1)

}

// коли наступає крис
if start == true and place_meeting(x, y, obj_dim_player2) and  drowings = true and obj_dim_player2.status=STATUS.ACTIVE
{
	
	if(!sequence_exists(seq_restoraunt_barmen)) draw_sprite_ext(help_sprite, -1,  obj_dim_player2.x + help_x, obj_dim_player2.y + help_y, 0.5, 0.5, 0, -1, 1)
}

