if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "camera1":
	instance_deactivate_object(obj_sound_emmiter_3d);
	//audio_stop_all();
	obj_dim_player1.x = obj_player_1.x;
	obj_dim_player1.y = obj_player_1.y;
	
	obj_dim_player2.x = obj_player_2.x;
	obj_dim_player2.y = obj_player_2.y;
    break;
  
    case "pause":
	pause = true;
  
    break;
  
    case "dial_start":
    scr_create_textbox("scena_6");
  
    break;
  
    case "delete":
	instance_activate_object(obj_sound_emmiter_3d);
	global.task = 1;
	global.shop = false;
    layer_sequence_destroy(seq1);
	scr_music_fon_change(room);
    break;
  }
}