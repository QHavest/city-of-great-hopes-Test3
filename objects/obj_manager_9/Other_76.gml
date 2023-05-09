if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
    
	case "start":
	audio_channel_num(5);
	//a = 1;
	scr_music_fon_change("snd_viter");
	//audio_play_sound(snd_bazar_2, 1, true);
	//regCam1 = view_get_camera(0);
	//regCam2 = view_get_camera(1);
	//var cam1 = camera_create_view(1890, 112, 432, 243, 0, obj_camera, -1, -1, 250, 150);
	//view_set_camera(0, cam1);
	//view_set_camera(1, cam1);
	//obj_dim_player2.image_index = spr_dim_Krus_stay_r;
	break;
	
	case "start_2":
	regCam1 = view_get_camera(0);
	regCam2 = view_get_camera(1);
	var cam1 = camera_create_view(1890, 112, 432, 243, 0, obj_camera, -1, -1, 250, 150);
	view_set_camera(0, cam1);
	view_set_camera(1, cam1);
	break;
	
	case "rain":
	//scr_music_fon_change(noone);
	instance_create_depth(0, 0, 0, obj_rain);
	break;
	
	case "rain2":
	with(obj_rain)
	{
		part_system_depth(rain9, -9999)
	}
	break;

	case "dialog1":
	scr_create_textbox("scena_9_1");
	break;
	
	case "dialog2":
	scr_create_textbox("scena_9_2");
	break;
	
	case "dialog3":
	scr_create_textbox("scena_9_3");
	break;
	
	case "sigarete":
	scr_create_textbox("scena_9_4");
	pause = true;
	break;
	
	case "dialog5":
	scr_create_textbox("scena_9_5");
	break;
	
	case "dialog6":
	scr_create_textbox("scena_9_6");
	pause = true;
	break;
	
	case "pause1":
	pause = true;
	//global.Fon_sound_gain -= 0.3;
	break;
	
	case "viter_gain":
	//global.Fon_sound_gain += 0.45;
	break;
	
	case "pause2":
	pause = true;
	break;
	
	case "pause3":
	pause = true;
	break;
	
	case "pause4":
	pause = true;
	break;

	case "settings":
	scr_music_fon_change(noone);
	audio_play_sound(snd_rain, 1, 1);
	
	var cam1 = camera_create_view(1890, 112, 368, 207, 0, obj_camera, -1, -1, 200, 120);
	view_set_camera(0, cam1);
	view_set_camera(1, cam1);
	
	break;

	//case "viter":
	//	//audio_play_sound(snd_viter, 2, true);
	//break;
	
	case "battle":
	pause = true;
	scr_create_textbox("scena_9_battle");
	break;

    case "delete":
	obj_inventory.visible = 1;
	audio_stop_sound(snd_viter);
	audio_stop_sound(snd_rain);
	//obj_dim_player2.x = obj_player_2_9_2.x;
	//obj_dim_player2.y = obj_player_2_9_2.y;
	view_set_camera(0, regCam1);
	view_set_camera(1, regCam2);
	global.shop = false;
	//obj_dim_player2.x = obj_player_2_9.x;
    layer_sequence_destroy(seq4);
	scr_music_fon_change(room);
	//instance_destroy(obj_rain);
	//room_goto(rm_street_container);
    break;
	
	case "new_seq":
	var playerInst1 = instance_find(obj_dim_player2,0);
	//var inst1 = instance_find(inst_BC79744,0);
	obj_inventory.visible = 0;
	var sequence = seq_scena_9_1;
	layer_create(-150, "Cutscenes2");
	var layerName = "Cutscenes2";

	global.shop = true;
	audio_stop_all();

	seq4 = layer_sequence_create(layerName, 0,0, sequence);
	var seqInst = layer_sequence_get_instance(seq4);

	sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst1);
	//sequence_instance_override_object(seqInst, obj_player_2_9,  inst1);
	
	break;
	
	case "end":
	obj_inventory.visible = 1;
	layer_sequence_destroy(seq_start);
	break;
	
  }
}