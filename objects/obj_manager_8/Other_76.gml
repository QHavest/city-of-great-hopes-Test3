if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    
	case "start":
	audio_play_sound(snd_Bazar, 1, true);
	regCam1 = view_get_camera(0);
	regCam2 = view_get_camera(1);
	//var cam1 = camera_create_view(1890, 112, 425, 240, 0, obj_camera, -1, -1, 250, 150);
	var cam1 = camera_create_view(1890, 112, 368, 207, 0, obj_camera, -1, -1, 250, 150);
	view_set_camera(0, cam1);
	view_set_camera(1, cam1);
	break;
	
	case "dialog1":
	scr_create_textbox("scena_8_1");
	break;
	
	//case "dialog2":
	//scr_create_textbox("scena_8_2");
	//break;
	
	case "dialog3":
	scr_create_textbox("scena_8_3");
	break;
	
	case "dialog4":
	scr_create_textbox("scena_8_4");
	pause = true;
	break;

	case "dialog5":
	scr_create_textbox("scena_8_5");
	pause = true;
	break;
	
	case "pause1":
	pause = true;
	break;
	
	case "pause2":
	pause = true;
	break;
	
	case "pause3":
	pause = true;
	break;
	
    case "delete":
	obj_inventory.visible = 1;
	layer_destroy("Cutscenes2")
	view_set_camera(0, regCam1);
	view_set_camera(1, regCam2);
	global.shop = false;
	global.task = 3;
    layer_sequence_destroy(seq3);
	audio_stop_sound(snd_Bazar);
	scr_music_fon_change(room);
	obj_dim_player1.y += 20;
	obj_dim_player2.y += 20;
	instance_activate_object(obj_pr_NPC_back);
	instance_activate_object(obj_pr_NPC_move);
	instance_activate_object(obj_pr_spr_change_outside_viewport);
	obj_dim_player1.InRoomMode = false;
	obj_dim_player2.InRoomMode = false;
    break;
  }
}