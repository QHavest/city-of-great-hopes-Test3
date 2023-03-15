if(bus == true and start == true and global.map == false)
{
	start = false;
	show_debug_message("Bus is ready and start = " + string(start));
	layer_create(-9999, "Cutcenes");
	var layerName = "Cutcenes";
	seq_buses = layer_sequence_create(layerName, busX, busY, seq_num);
}

if(global.map == true and start2 == true)
{
	show_debug_message("first IF");
	start2 = false;
	//layer_create(-9999, "Cutcenes");
	//var layerName = "Cutcenes";
	////var seqName = seq_bus;

	//seq_buses2 = layer_sequence_create(layerName, busX, busY, seq_bus2);
	//layer_sequence_pause(seq_buses2);
	start3 = true;
}

if(start3 == true and global.map == false)
{
	show_debug_message("sekond IF");
	layer_create(-9999, "Cutcenes");
	var layerName = "Cutcenes";
	//var seqName = seq_bus;
	instance_create_layer(busX, busY, "Cutcenes", obj_bus_stay);
	seq_buses2 = layer_sequence_create(layerName, busX, busY, seq_bus2);
	start2 = true;
	//layer_sequence_play(seq_buses2);
	start3 = false;
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
