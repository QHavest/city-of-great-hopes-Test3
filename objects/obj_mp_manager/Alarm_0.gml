/// @description Insert description here
// You can write your code in this editor
		target_rm = room;
		taxofon = obj_mp_open.Tax
		global.map = !global.map;
		// Вимиккаєм всі об'єкти
		// вмикаєм те що має працювати коли відкрита мапа
		instance_activate_object(obj_dim_player1);
		instance_activate_object(obj_dim_player2);
		instance_activate_object(Settings);
		instance_activate_object(obj_room_manager);
		instance_activate_object(daycycle);
		instance_activate_object(obj_inventory);
		instance_activate_object(music_room);
		instance_activate_object(obj_Battle_Interface);
		instance_activate_object(obj_manager_bus);
		// status check
		if obj_dim_player1.status = STATUS.ACTIVE
		{
			obj_dim_player1.status = STATUS.PASSIVE;
			ac_pl=1;
			target_x = obj_dim_player1.x;
			target_y = obj_dim_player1.y;
		}
		else
		{
			obj_dim_player2.status = STATUS.PASSIVE;
			ac_pl=2;
			target_x = obj_dim_player2.x;
			target_y = obj_dim_player2.y;
		}
		obj_dim_player1.visible = 0;
		obj_dim_player2.visible = 0;
		obj_inventory.visible = 0;



