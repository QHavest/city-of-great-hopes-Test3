if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
	case "music_stop":
	audio_stop_sound(snd_theme_splash);
    break;
	
	case "pause_splash":
	layer_sequence_pause(seqs);
	texturegroup_load("Default");
	layer_sequence_play(seqs);
    break;
	
	case "splash_destroy":
	room_goto_next()
	scr_music_fon_change(rm_main_menu);
    break;
  }
}