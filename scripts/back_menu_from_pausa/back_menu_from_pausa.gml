// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function back_menu(){	
scr_music_fon_change(rm_main_menu)
// хотів зробити щоб при продовженні гри або початку нової активним був останньо активний ггwith (obj_dim_player1)
/*{
	if (last_active = true)
	{
		status = STATUS.ACTIVE;
		last_active = 0;
	}
	else {
			if (obj_dim_player2.last_active = true)
			{status = STATUS.PASSIVE;}
		//	else {status = STATUS.ACTIVE;}
		}
	state = PLAYERSTATE.FREE
}
with (obj_dim_player2)
{
	if (last_active = true)
	{
		status = STATUS.ACTIVE;
		last_active = 0;
	}
	else {status = STATUS.PASSIVE;}
	state = PLAYERSTATE.FREE
}*/
global.dialogue_move=false;
room_goto(rm_main_menu)
//if(room_goto(rm_main_menu)){ global.pauses=false;} else if (room_goto(rm_settings)){global.pauses=true;}
}