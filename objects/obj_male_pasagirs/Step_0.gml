/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
depth=-bbox_bottom
// для паузи між після зустрічі з гг
if (!place_meeting(x+hsp,y,obj_dim_player1) and !place_meeting(x+hsp,y,obj_dim_player2)) 
{
	//if (start_counter=1) {start_counter=0;}
	time_res -= 1;
	time_res=clamp(time_res,0,pause_time_S*room_speed)
}
if (time_res=0) // йдем після зупинки
{
	//path_speed=2;
	spd=hsp;
	if (x < targetX[n]) // визначаєм анімацію відносно напрямку руху
			{sprite_index=asset_get_index("spr_vokzal_man_"+num+"_WR")}
	else {sprite_index=asset_get_index("spr_vokzal_man_"+num+"_WL")}
}
//if (start_counter=0 and time_res=0 and global.dialog_end)
//{
	// зіткнення з ГГ
	if ( (place_meeting(x+hsp, y, obj_dim_player1) or place_meeting(x, y+vsp, obj_dim_player1) ) and obj_dim_player1.status=STATUS.ACTIVE)
	{
	//	scr_create_textbox(text_id,spr_ic_Ytopurok);
	//	path_speed=0;
		spd=0;
		if (x < targetX[n])
		{sprite_index=asset_get_index("spr_vokzal_man_"+num+"_R")}
		else {sprite_index=asset_get_index("spr_vokzal_man_"+num+"_L")}
	//	start_counter=1;
		time_res=pause_time_S*room_speed;
	}
	if ((place_meeting(x+hsp, y, obj_dim_player2) or place_meeting(x, y+vsp, obj_dim_player2) ) and obj_dim_player2.status=STATUS.ACTIVE )
	{
		//scr_create_textbox(text_id,spr_ic_Krus);
	//	path_speed=0;
		spd=0;
		if (x < targetX[n])
		{sprite_index=asset_get_index("spr_vokzal_man_"+num+"_R")}
		else {sprite_index=asset_get_index("spr_vokzal_man_"+num+"_L")}
		//start_counter=1;
		time_res=pause_time_S*room_speed;
	}
//}

// якщо прийшов в кінець шляху
/*
if (path_position=1)
{
	sprite_index=asset_get_index("spr_vokzal_man_"+num+"_R");
	alarm[1]=irandom_range(2,5)*room_speed;
}*/
// якщо прийшов в кінець
if (x=targetX[n] and y=targetY[n]) 
{
	alarm[1]=1//room_speed*irandom_range(2,6);
	if (x > xprevious and stop[n]=true)
		{sprite_index=asset_get_index("spr_vokzal_man_"+num+"_R")}
	else {sprite_index=asset_get_index("spr_vokzal_man_"+num+"_L")}	
}
else if (visible)
{
	mp_potential_step(targetX[n], targetY[n], spd, false);
}