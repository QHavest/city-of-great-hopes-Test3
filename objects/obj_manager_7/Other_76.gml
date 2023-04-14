if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    
	case "start":
	
	start = 1;
	scr_music_fon_change("snd_street");
	volume = 0;
	regCam1 = view_get_camera(0);
	regCam2 = view_get_camera(1);
	var cam1 = camera_create_view(1890, 112, 480, 270, 0, obj_camera, -1, -1, 250, 150);
	view_set_camera(0, cam1);
	view_set_camera(1, cam1);
	
	break;
	
	case "dialog1_7":
	pause = true;
	scr_create_textbox("scena_7_1");
	
	break;
	
	case "dialog2_7":
	pause = true;
	scr_create_textbox("scena_7_2");
	audio_sound_gain(snd_svust2, 0, 1);
	audio_stop_sound(snd_svust2);
	instance_destroy(obj_svust);
	
	break;
	
	case "dialog3":
	pause = true;
	scr_create_textbox("scena_7_3");
	
	break;
	
	case "dialog4":
	scr_create_textbox("scena_7_4");
	
	break;
	
	case "dialog5":
	scr_create_textbox("scena_7_5");
	
	volume = 0;
	
	break;
	
	case "mandarun_music":
	scr_music_fon_change("snd_mandarun");
	break;
	
	case "pause1":
	pause = true;
	
	break;
	
	case "dialog6":
	pause = true;
	scr_create_textbox("scena_7_6");
	scr_music_fon_change(noone);
	break;
	
    case "delete":
	global.task = 2;
	obj_center_fontan.x = x1;
	obj_center_fontan.y = y1;
	view_set_camera(0, regCam1);
	view_set_camera(1, regCam2);
	global.shop = false;
    layer_sequence_destroy(seq2);
	scr_music_fon_change(room);
	obj_dim_player1.y += 10;
	obj_dim_player2.y += 10;
	instance_activate_object(obj_pr_NPC_back);
	instance_activate_object(obj_doorman);
	instance_activate_object(obj_pr_NPC_move);
	instance_activate_object(obj_pr_spr_change_outside_viewport);
	instance_activate_object(obj_left_lamp_night);
	obj_dim_player1.InRoomMode = false;
	obj_dim_player2.InRoomMode = false;
	room_restart();
    break;
  }
}