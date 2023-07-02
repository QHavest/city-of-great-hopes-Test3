if(global.pause)
{
	resume_game();
}

else
{
	if (!global.map  and !global.shop and room != rm_end and obj_diary.show_diary = false 
		and global.inventory == false and global.dialog_end)
	{
		global.pause = true;
		part_system_depth(daycycle.weather, 1000);
		instance_deactivate_all(true);
		layer_create(-9995, "Transition_locs");
		layerName = "Transition_locs";
		var seqnames = Sequence26;
		sequence_id = layer_sequence_create(layerName,display_get_gui_width()/2, display_get_gui_height()/2, seqnames);
		layer_sequence_pause(sequence_id);
		instance_activate_object(obj_loading);
		instance_activate_object(obj_diary);
		instance_activate_object(music_room);
		instance_activate_object(obj_mozg_ai);
	}
}