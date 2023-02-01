if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    
	case "start":
	//scr_music_fon_change()
	with(music_room)
	{
		audio_stop_sound(snd_center);
		new_sound = noone;
	}
	audio_play_sound(snd_street, 1, 1);
	volume = 0;
	regCam1 = view_get_camera(0);
	regCam2 = view_get_camera(1);
	var cam1 = camera_create_view(1890, 112, 533, 300, 0, obj_camera, -1, -1, 250, 150);
	view_set_camera(0, cam1);
	view_set_camera(1, cam1);
	
	////////////////////////////////////////////////////////////
	
	
	//audio_play_sound(snd_street, 1, true);
	
	//audio_play_sound(snd_fountain, 2, true);
	//audio_sound_gain(snd_fountain, 0.045, 7500);
	
	//volume = 0;
	
	//audio_play_sound(snd_svust, 3, true);
	//while(volume != 0.04)
	//{
	//	audio_sound_gain(snd_svust, volume, 10000);
	//	volume += 0.0005;
	//	alarm[0] = 80;
	//}
	
	////////////////////////////////////////////////////////////
	
	break;
	
	case "dialog1":
	pause = true;
	scr_create_textbox("scena_7_1");
	
	break;
	
	case "dialog2":
	pause = true;
	scr_create_textbox("scena_7_2");
	
	break;
	
	case "dialog3":
	pause = true;
	scr_create_textbox("scena_7_3");
	
	break;
	
	case "dialog4":
	pause = true;
	scr_create_textbox("scena_7_4");
	
	break;
	
	case "dialog5":
	//pause = true;
	scr_create_textbox("scena_7_5");
	
	volume = 0;
	
	//audio_play_sound(snd_mandarun, 1, false);
	//audio_sound_gain(snd_svust, 0.06, 2500);
	
	
	
	break;
	
	case "pause1":
	pause = true;
	
	break;
	
	case "dialog6":
	pause = true;
	scr_create_textbox("scena_7_6");
	
	break;
	
	case "mandarun_stop_sound":
	
	//audio_stop_sound(snd_mandarun);
	
	break;
	
	case "stop_svust":
	
	//while(volume <= 0)
	//{
	//	audio_sound_gain(snd_svust, volume, 2500);
	//	volume -= 0.05;
	//	alarm[0] = 60;
	//}
	break;
	
	//case "room_goto1":
	////room_goto(rm_center);
	////p1X = obj_dim_player1.x;
	////p1Y = obj_dim_player1.y;
	////p2X = obj_dim_player2.x;
	////p2Y = obj_dim_player2.y;
	//room_restart();
	//break;
	
	//case "room_goto2":
	//room_goto(rm_center_left);
	//obj_dim_player1.x = p1X;
	//obj_dim_player1.y = p1Y;
	//obj_dim_player2.x = p2X;
	//obj_dim_player2.y = p2Y;
	//break;
	
    case "delete":
	audio_stop_sound(snd_street);
	with(music_room)
	{
		new_sound = snd_center;
		//audio_play_sound(snd_center, 1, 1);
	}
	//audio_stop_sound(snd_fountain);
	//audio_stop_sound(snd_street);
	obj_center_fontan.x = x1;
	obj_center_fontan.y = y1;
	//obj_center_goluby.depth = dep1;
	view_set_camera(0, regCam1);
	view_set_camera(1, regCam2);
	global.shop = false;
    layer_sequence_destroy(seq2);
	scr_music_fon_change(room);
	instance_destroy(obj_mandarun_sound);
	room_restart();
    break;
  }
}