but_map = keyboard_check_pressed(ord("M"));
//if object_exists(obj_mp_open) and global.contact !=0 {global.contact =0; show_debug_message("zero");}
//with(obj_mp_open){
//if place_meeting(x,y,obj_dim_player1) or place_meeting(x,y,obj_dim_player2)
//global.contact = 1;
//else if global.contact !=0 global.contact =0;
//}

if (global.map)
{
	// перехід у кімнату мапи
	if (room != rm_mapa)	
	{
		room_goto(rm_mapa);	
	}
		if (but_map) 
	{	
		global.map = !global.map;
		obj_inventory.visible = 1;
		room_goto(target_rm);
		obj_dim_player1.x = target_x;
		obj_dim_player1.y = target_y;
		obj_dim_player2.x = target_x;
		obj_dim_player2.y = target_y;
		obj_dim_player1.visible = 1;
		obj_dim_player2.visible = 1;
		if ac_pl =1
		{
		obj_dim_player1.status = STATUS.ACTIVE;	
		}
		else
		{
		obj_dim_player2.status = STATUS.ACTIVE;	
		}
	instance_activate_all();
	}
}
/*else
{
	if but_map
	{	if object_exists(obj_mp_open)
			with(obj_mp_open)
				{
				if place_meeting(x,y,obj_dim_player1) or place_meeting(x,y,obj_dim_player2)
					{global.contact = 1;}
				else if global.contact!=0 global.contact=0;
				}
		if global.contact == 1{
		
		}
	}
}
*/



