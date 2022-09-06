// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_warp_door_to_another_room(room_name, player_x, player_y){
	with obj_warp{
		if global.dark =  0 {
			alarm[0] = 1
			target_rm = room_name
		target_x = player_x	
		target_y = player_y
		
		}
		
	}

}
