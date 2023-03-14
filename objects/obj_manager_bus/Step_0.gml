if(bus == true and start == true)
{
	start = false;
	show_debug_message("Bus is ready and start = " + string(start));
	layer_create(-9999, "Cutcenes");
	var layerName = "Cutcenes";
	//var seqName = seq_bus;

	seq_buses = layer_sequence_create(layerName, busX, busY, seq_bus);
}

switch(room)
{
	case rm_street_container:
		busX = 600;
		busY = 290;
		bus = 1;
		
		//if(mp_open) // відкриття мапи тільки коли стоїть автобус
		//{
		//	instance_activate_object(inst_3011B2F9);
		//	show_debug_message("activate");
		//}
		//else
		//{
		//	instance_deactivate_object(inst_3011B2F9);
		//}
		
	break;
	
	case rm_home_gg:
		busX = 357;
		busY = 265;
		bus = 1;
		
		//if(mp_open)
		//{
		//	instance_activate_object(obj_mp_open);
		//}
		//else
		//{
		//	instance_deactivate_object(obj_mp_open);
		//}
		
	break;
	
	default: 
		bus = 0;
	break;
}

//if(mp_open and (room == rm_street_container or room == rm_school))
//{
//	instance_activate_object(obj_mp_open);
//}