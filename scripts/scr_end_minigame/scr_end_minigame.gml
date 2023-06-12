// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_end_minigame(){
		global.dialog_end = true;
		global.zaniatui = false;
		with(obj_Battle_Interface)
		{
		another_fone = false;
		hp_one = 0;
		amount_hp = 279;
		game_over_mini = false;
		mini_game = true
		hp_enemies = false;
		games = false
		hpKrys = 50;
		hpYtopyrok = 50;
		amount_hp_enemy = 96;
		}
		instance_activate_object(obj_dim_player1);
		instance_activate_object(obj_dim_player2);
		
			//obj_dim_player1.x = 1795
			//obj_dim_player1.y = 270
			//obj_dim_player2.x = 1900
			//obj_dim_player2.y = 270
			obj_Battle_Interface.target_x = obj_dim_player1.x; 
		    obj_Battle_Interface.target_y = obj_dim_player1.y
			obj_Battle_Interface.target_x = obj_dim_player2.x;
			obj_Battle_Interface.target_y = obj_dim_player2.y
		
		with (obj_dim_player1)
		{
		if (last_active = true)
		{
		status = STATUS.ACTIVE;
		}}
		with (obj_dim_player2)
		{
		if (last_active = true)
		{
		status = STATUS.ACTIVE;
		}}
		instance_activate_object(obj_inventory);
		instance_activate_object(Settings);
		room_goto(obj_Battle_Interface.target_rm);
		scr_music_fon_change(obj_Battle_Interface.target_rm);
}

function scr_end_minigame_sects(){
		global.dialog_end = true;
		global.zaniatui = false;
		with(obj_Battle_Interface)
		{
		another_fone = false;
		hp_one = 0;
		amount_hp = 279;
		game_over_mini = false;
		mini_game = true
		hp_enemies = false;
		games = false
		hpKrys = 50;
		hpYtopyrok = 50;
		amount_hp_enemy = 96;
		}
		instance_activate_object(obj_dim_player1);
		instance_activate_object(obj_dim_player2);
		
			obj_dim_player1.x = 2020
			obj_dim_player1.y = 280
			obj_dim_player2.x = 2050
			obj_dim_player2.y = 285
			//obj_Battle_Interface.target_x = obj_dim_player1.x; 
		    //obj_Battle_Interface.target_y = obj_dim_player1.y
			//obj_Battle_Interface.target_x = obj_dim_player2.x;
			//obj_Battle_Interface.target_y = obj_dim_player2.y
		
		with (obj_dim_player1)
		{
		if (last_active = true)
		{
		status = STATUS.ACTIVE;
		}}
		with (obj_dim_player2)
		{
		if (last_active = true)
		{
		status = STATUS.ACTIVE;
		}}
		instance_activate_object(obj_inventory);
		instance_activate_object(Settings);
		room_goto(rm_south);
		scr_music_fon_change(obj_Battle_Interface.target_rm);
}