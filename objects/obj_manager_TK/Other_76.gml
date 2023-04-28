if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    case "start":
	//scr_music_fon_change("kalunka");
		audio_play_sound(snd_tru_kalunku, 1, 1);
		regCam1 = view_get_camera(0);
		regCam2 = view_get_camera(1);
		cams2 = camera_create_view(0,0, 213, 120, 0, obj_camera, -1, -1, 300, 50);
		view_set_camera(0, cams2);
		view_set_camera(1, cams2);
	
		scr_music_fon_change(noone);
    break;
  
    case "dialog":
		scr_create_textbox("Boss");
		pause = true;
    break;
  
    case "delete":
	audio_stop_sound(snd_tru_kalunku);
		layer_destroy("CUT");
		global.shop = false;
	    layer_sequence_destroy(seq_TK);
	    view_set_camera(0, regCam1);
	    view_set_camera(1, regCam2);
		scr_music_fon_change(room);
		obj_dim_player1.x = 250;
		obj_dim_player1.y = 112;
		obj_dim_player2.x = 235;
		obj_dim_player2.y = 112;
		room_goto(rm_tri_kalynky);
    break;
  }
}