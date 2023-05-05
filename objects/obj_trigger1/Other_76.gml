if event_data [? "event_type"] == "sequence event"
{
	switch (event_data[? "message"])
	{
		case "start":
		audio_play_sound(snd_text_words, 1, 1);
		scr_music_fon_change(noone);
		global.shop = 1;
		regCam1 = view_get_camera(0);
		regCam2 = view_get_camera(1);
		cams2 = camera_create_view(0,0, 213, 120, 0, obj_camera, -1, -1, 300, 50);
		view_set_camera(0, cams2);
		view_set_camera(1, cams2);
			
		break;
		
		case "stop":
		layer_sequence_destroy(_seqElmi);
		break;
		
		case "snd_throw":
		audio_play_sound(snd_throwdown, 2, 0);
		break;
		
		case "stop_snd_words":
		audio_stop_sound(snd_text_words);
		break;
		
		case "snd_skrup":
		audio_play_sound(snd_skrup, 3, 0);
		break;
		
		case "snd_walk":
		audio_play_sound(snd_walk_inside, 3, 0);
		break;
		
		case "snd_walk_stop":
		audio_stop_sound(snd_walk_inside);
		break;
		
		case "seq2":
		with(obj_trigger2) {start = 1;};
		break;
	}
}