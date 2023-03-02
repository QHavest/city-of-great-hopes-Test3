if(!instance_exists(daycycle)) exit;

	if(global.day == 0)
	{
		instance_deactivate_object(obj_shadow_second_side);
		instance_deactivate_object(inst_28953189);
	}
	else
	{
		instance_activate_object(obj_shadow_second_side);
		instance_activate_object(inst_28953189);
	}
