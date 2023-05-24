if(pause == true)
{
	layer_sequence_pause(seq_TK);
	if(instance_exists(obj_dim_textbox_gui))
	{
		exit;
	}
	else
	{
		layer_sequence_play(seq_TK);
		pause = false;
	}
}

if(room == rm_tri_kalynky and global.boss == true)
{
	instance_activate_object(inst_68AFCB6C);
	instance_activate_object(inst_5B5AEA8E);
	instance_deactivate_object(inst_2CA37EEF);
}

if(!global.boss) 
{
	instance_deactivate_object(inst_68AFCB6C);
	instance_deactivate_object(inst_5B5AEA8E);
}
