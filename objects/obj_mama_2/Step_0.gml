
//if x>xprevious sprite_index = spr_mama_right;
//if x<xprevious sprite_index = spr_mama_left;



depth=-bbox_bottom;



if (!place_meeting(x,y,obj_dim_player1) and !place_meeting(x,y,obj_dim_player2)) 
{
	if start_counter=1 start_counter=0;
	time_res -= 1;
	time_res=clamp(time_res,0,pause_time_S*room_speed)
}
if time_res=0 path_speed=2;

if (place_meeting(x+hsp, y, obj_dim_player1) or place_meeting(x, y+vsp, obj_dim_player1) )and global.dialog_end and !global.shop and obj_dim_player1.status=STATUS.ACTIVE  and start_counter=0 and time_res=0
{scr_create_textbox(text_id,spr_ic_Ytopurok);
	path_speed=0;
	start_counter=1;
	time_res=pause_time_S*room_speed;
}
if(place_meeting(x+hsp, y, obj_dim_player2) or place_meeting(x, y+vsp, obj_dim_player2) ) and  global.dialog_end and !global.shop and obj_dim_player2.status=STATUS.ACTIVE and start_counter=0 and time_res=0
{scr_create_textbox(text_id,spr_ic_Krus);
	path_speed=0;
	start_counter=1;
	time_res=pause_time_S*room_speed;
}