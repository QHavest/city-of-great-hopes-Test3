
if acepted_key 
{ draw_sprite_ext(spr_dark,0,0,0,100,100,0,c_black,0.5);
	// переміщення по точках вибраного району
	switch (pos)
	{
		case 0 : 
		draw_sprite_stretched(spr_mp_Railway_station,lang_im,bord_x_r,bord_y_r,r_w*kof_r,r_h*kof_r);
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		if spot = clamp(spot,0,max_spot_n_r) and (keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down))
		{
			audio_play_sound(snd_search,5,0,global.System_gain);
		}
		else spot = clamp(spot,0,max_spot_n_r)
		break;
		
		case 1 : 
		draw_sprite_stretched(spr_mp_Bazar,lang_im,bord_x_b,bord_y_b,b_w*kof_b,b_h*kof_b) 
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		if spot = clamp(spot,0,max_spot_n_b) and (keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down))
		{
			audio_play_sound(snd_search,5,0,global.System_gain);
		}
		else spot = clamp(spot,0,max_spot_n_b)
		break;
		
		case 2 : 
		draw_sprite_stretched(spr_mp_Center,lang_im,bord_x_c,bord_y_c,c_w*kof_c,c_h*kof_c) 
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		if spot = clamp(spot,0,max_spot_n_c) and (keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down))
		{
			audio_play_sound(snd_search,5,0,global.System_gain);
		}
		else spot = clamp(spot,0,max_spot_n_c)
		break;
		
		case 3 : 
		draw_sprite_stretched(spr_mp_Tukhlyanka,lang_im,bord_x_t,bord_y_t,t_w*kof_t,t_h*kof_t) 
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		if spot = clamp(spot,0,max_spot_n_t) and (keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down))
		{
			audio_play_sound(snd_search,5,0,global.System_gain);
		}
		else spot = clamp(spot,0,max_spot_n_t) 
		break;
	}
	//вивід вибраного місця для телепорту
	if spot_num[pos]>= 0 { draw_sprite_ext(spr_hat,0,spot_x[spot][pos],spot_y[spot][pos],3,3,0,-1,1);
	// вивід всіх можливих варіантів для телепорту
	for (var i=0; i<=spot_num[pos]; i++;)
	{	
		if (i!=spot)
		draw_sprite_ext(spr_choice_circle,0,spot_x[i][pos],spot_y[i][pos],0.8,0.8,0,c_white,1);
	}}

// вихід до головної мапи
if keyboard_check_pressed(vk_escape) acepted_key=0;
	
// телепортація
if pos <2 //лише для демки ПОТІМ ПРИБЕРІТЬ ЦЕ!!!! 
if keyboard_check(vk_enter) and acepted_key and t == 1 and global.money>feee
		{ global.map = 0;
		global.contact = 0;
		room_goto( room_pos[spot][pos]);
		instance_activate_all();
		scr_music_fon_change(room_pos[spot][pos]);
		// inventory
		obj_inventory.visible = 1;
		global.money -= feee;
		//player
		obj_dim_player1.x = player_x[spot][pos];
		obj_dim_player1.y = player_y[spot][pos];
		obj_dim_player2.x = player_x[spot][pos];
		obj_dim_player2.y = player_y[spot][pos];
		obj_dim_player1.visible = 1;
		obj_dim_player2.visible = 1;
		if obj_mp_manager.ac_pl=1 obj_dim_player1.status = STATUS.ACTIVE;
		else obj_dim_player2.status = STATUS.ACTIVE;
		}
}