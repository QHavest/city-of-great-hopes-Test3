if event_data [? "event_type"] == "sequence event"
{
  switch (event_data[? "message"])
  {
	case "pause_splash":
	layer_sequence_pause(seqs);
	//texturegroup_load("Default");
    break;
	
	case "splash_destroy":
	room_goto_next()
	scr_music_fon_change(rm_main_menu);
    break;
  }
}