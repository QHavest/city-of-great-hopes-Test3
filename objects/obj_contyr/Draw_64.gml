if acepted_key 
{
	switch (pos)
	{
		case 0 : draw_sprite_stretched(spr_mp_Railway_station,0,bord_x_r,bord_y_r,r_w*kof_r,r_h*kof_r);
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		spot = clamp(spot,0,1);		
		break;
		
		case 1 : draw_sprite_stretched(spr_mp_Bazar,0,bord_x_b,bord_y_b,b_w*kof_b,b_h*kof_b) 
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		spot = clamp(spot,0,2);
		break;
		
		case 2 : draw_sprite_stretched(spr_mp_Center,0,bord_x_c,bord_y_c,c_w*kof_c,c_h*kof_c) 
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		spot = clamp(spot,0,3);
		break;
		
		case 3 : draw_sprite_stretched(spr_mp_Tukhlyanka,0,bord_x_t,bord_y_t,t_w*kof_t,t_h*kof_t) 
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		spot = clamp(spot,0,3);
		break;
	}
	//вивід вибраного місця для телепорту
	draw_sprite(spr_choice_circle,0,spot_x[spot][pos],spot_y[spot][pos]);
	// вивід всіз можливих варіантів для телепорту
	for (var i=0; i<=spot_num[pos]; i++;)
	{	
		if (i!=spot)
		draw_sprite_ext(spr_choice_circle,0,spot_x[i][pos],spot_y[i][pos],1,1,0,0,c_gray);
	}
	if keyboard_check_pressed(vk_backspace) acepted_key=0;
	}
// телепортація
if keyboard_check(vk_space) && acepted_key
		{ global.map = 0;
		room_goto( room_pos[spot][pos]);
		obj_dim_player.x = player_x[spot][pos];
		obj_dim_player.y = player_y[spot][pos];
		obj_dim_player.visible = 1;
		}