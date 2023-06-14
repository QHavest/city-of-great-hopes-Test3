if(!instance_exists(daycycle)) exit;

	if(instance_exists(obj_suvenir_night))
	{
		instance_deactivate_object(inst_28953189);
		instance_deactivate_object(inst_539D1281);
	}
	else
	{
		instance_activate_object(inst_28953189);
		instance_activate_object(inst_539D1281);
	}
