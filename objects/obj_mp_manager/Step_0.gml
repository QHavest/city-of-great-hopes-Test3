
but_map = keyboard_check_pressed(ord("M"));
//if object_exists(obj_mp_open) and global.contact !=0 {global.contact =0; show_debug_message("zero");}
//with(obj_mp_open){
//if place_meeting(x,y,obj_dim_player1) or place_meeting(x,y,obj_dim_player2)
//global.contact = 1;
//else if global.contact !=0 global.contact =0;
//}

if (global.map)
{
	if (room != rm_mapa)	room_goto(rm_mapa);

		if (but_map) 
	{	
		global.map = !global.map;
		room_goto(target_rm);
		obj_dim_player1.x = target_x;
		obj_dim_player1.y = target_y;
		obj_dim_player2.x = target_x;
		obj_dim_player2.y = target_y;
		obj_dim_player1.visible = 1;
		obj_dim_player2.visible = 1;
		//obj_inventory.visible = 1;
		obj_dim_player1.state = PLAYERSTATE.FREE;
	instance_activate_all();
		// Снова включаем все объекты
		
	}
}
else
{
	if but_map
	{	if object_exists(obj_mp_open)
			with(obj_mp_open)
				{
				if place_meeting(x,y,obj_dim_player1) or place_meeting(x,y,obj_dim_player2)
					{global.contact = 1;}
				}
		if global.contact == 1{
		target_rm = room;
		target_x = obj_dim_player1.x;
		target_y = obj_dim_player1.y;
		taxofon = obj_mp_open.Tax
		global.map = !global.map;
		// Вимиккаєм всі об'єкти
		instance_deactivate_all(true);
		// вмикаєм те що має працювати
		instance_activate_object(obj_dim_player1);
		instance_activate_object(obj_dim_player2);
		instance_activate_object(Settings);
		instance_activate_object(obj_room_manager);
		instance_activate_object(daycycle);
		instance_activate_object(obj_inventory);
		instance_activate_object(music_room);
		obj_dim_player1.state = PLAYERSTATE.STAY;
		obj_dim_player1.visible = 0;
		obj_dim_player2.visible = 0;
		//obj_inventory.visible = 0;
		}
	}
}




