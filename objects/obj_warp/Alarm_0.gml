with obj_warp{
	
	if darksi < 1{
		darksi += 0.05
		alarm[0] = 1
		}
	else{
		room_goto(roomgoes)
		alarm [1] = 1
		
		}
		
	}
