if(obj_dim_player1.status = STATUS.ACTIVE and place_meeting(x, y, obj_dim_player1)){
	draw_sprite_ext(help_sprite, img,  obj_dim_player1.x - 6, obj_dim_player1.y - 80, 0.5, 0.5, 0, -1, 1)
	if(invis_door = true){
	draw_sprite(door_sprite, door_num_in_sprite, door_x, door_y);
	}

}
if(obj_dim_player2.status = STATUS.ACTIVE and place_meeting(x, y, obj_dim_player2)){

	draw_sprite_ext(help_sprite, img,  obj_dim_player2.x - 6, obj_dim_player2.y - 80, 0.5, 0.5, 0, -1, 1)
	if(invis_door = true){
	draw_sprite(door_sprite, door_num_in_sprite, door_x, door_y);
	}
}

if(sequence_exists(seq_scena_9_start_eng) or sequence_exists(seq_scena_9_start_ukr) or sequence_exists(seq_scena_9_1))
{
	help_sprite = spr_clear;
}
else help_sprite = spr_butt_E;