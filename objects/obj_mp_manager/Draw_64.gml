but_map = keyboard_check_pressed(ord("M"));

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
		obj_dim_player1.state = PLAYERSTATE.FREE;
	instance_activate_all();
		// Снова включаем все объекты
		
	}
}
else
{
	if but_map and place_meeting(x,y,obj_dim_player1) 
	{	target_rm = room;
		target_x = obj_dim_player1.x;
		target_y = obj_dim_player1.y;
		global.map = !global.map;
		// Вимиккаєм всі об'єкти
		instance_deactivate_all(true);
		instance_activate_object(obj_dim_player1);
		instance_activate_object(obj_dim_player2);
		instance_activate_object(Settings);
		instance_activate_object(obj_room_manager);
		instance_activate_object(daycycle);
		obj_dim_player1.state = PLAYERSTATE.STAY;
		obj_dim_player1.visible = 0;
		obj_dim_player2.visible = 0;
	}
}