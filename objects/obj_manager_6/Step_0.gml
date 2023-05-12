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
	audio_sound_gain(snd_svust, 0, 1);
	instance_deactivate_object(obj_task1_npc1);
	instance_deactivate_object(obj_sheva_alkash);
	//instance_deactivate_object(inst_5CC300D9);
	instance_deactivate_object(inst_772A1C64);
}
if(global.task == 1)
{
	audio_sound_gain(snd_svust, 1, 1);
	instance_activate_object(obj_task1_npc1);
	instance_activate_object(obj_sheva_alkash);
	//instance_activate_object(inst_5CC300D9);
	instance_activate_object(inst_772A1C64);
}

if(global.pause and instance_exists(obj_sound_emmiter_3d))
{ 
	audio_sound_gain(snd_svust, 0, 1);
	audio_emitter_free(obj_sound_emmiter_3d.myEmitter);
}
if(!global.pause) audio_sound_gain(snd_svust, 1, 1);