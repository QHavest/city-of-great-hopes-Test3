if(pause == true)
{
	layer_sequence_pause(seq1);
	if(instance_exists(obj_dim_textbox_gui))
	{
		exit;
	}
	else
	{
		layer_sequence_play(seq1);
		pause = false;
	}
}

if(global.task != 1)
{ 
	audio_sound_gain(snd_svust, 0, 0);
	instance_deactivate_object(obj_task1_npc1);
	instance_deactivate_object(obj_sheva_alkash);
	instance_deactivate_object(inst_772A1C64);
	instance_deactivate_object(inst_129628B1);
	instance_activate_object(inst_71918161);
}
if(global.task == 1)
{
	
	audio_sound_gain(snd_svust, 1, 0);
	instance_activate_object(obj_task1_npc1);
	instance_activate_object(obj_sheva_alkash);
	instance_activate_object(inst_772A1C64);
	instance_activate_object(inst_129628B1);
	instance_deactivate_object(inst_71918161);
	if(!instance_exists(obj_task1_npc1)) instance_create_layer(1623, 238, "npc", obj_task1_npc1);
}

if(global.pause)
{ 
	audio_sound_gain(snd_svust, 0, 0);
}
if(!global.pause) audio_sound_gain(snd_svust, 1, 1);