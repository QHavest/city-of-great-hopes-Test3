/// @description clarification
with obj_room_manager {
	if global.dark > 0 {
	
		global.dark -= 0.05;
		alarm[1] = 1;
	
	}
	if room = roomgo{
		
		obj_dim_player.x = playerx
		obj_dim_player.y = playery
	
	}
}
