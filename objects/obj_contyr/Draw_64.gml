if acepted_key 
{
	switch (pos)
	{
		case 0 : draw_sprite_stretched(spr_mp_Railway_station,0,bord_x_r,bord_y_r,r_w*kof_r,r_h*kof_r);
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		spot = clamp(spot,0,1);
		draw_sprite(spr_choice_circle,0,spot_x[spot][0],spot_y[spot][0])
		//телепортація
		//if keyboard_check()
			
		break;
		case 1 : draw_sprite_stretched(spr_mp_Bazar,0,bord_x_b,bord_y_b,b_w*kof_b,b_h*kof_b) 
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		spot = clamp(spot,0,2);
		draw_sprite(spr_choice_circle,0,spot_x[spot][1],spot_y[spot][1])
		//телепортація
		break;
		case 2 : draw_sprite_stretched(spr_mp_Center,0,bord_x_c,bord_y_c,c_w*kof_c,c_h*kof_c) 
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		spot = clamp(spot,0,3);
		draw_sprite(spr_choice_circle,0,spot_x[spot][2],spot_y[spot][2])
		
		break;
		case 3 : draw_sprite_stretched(spr_mp_Tukhlyanka,0,bord_x_t,bord_y_t,t_w*kof_t,t_h*kof_t) 
		spot += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
		spot = clamp(spot,0,3);
		draw_sprite(spr_choice_circle,0,spot_x[spot][3],spot_y[spot][3])
		
		
		break;

	}
if keyboard_check_pressed(vk_backspace) acepted_key=0;

}