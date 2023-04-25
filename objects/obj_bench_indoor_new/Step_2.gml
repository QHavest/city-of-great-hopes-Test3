/// @desc
//не видалив бо гарний код, може буду користати)

/*with (obj_dim_player1)
{
	//новий глобал для відмежування діалогу (dialog end трохи не там змінюється)
	if in_place and start =0 and global.zaniatui = false
	{
		start =1; //потрібно для нормального виходу з анімації (інакше йде зациклення бо ГГ завжди in_place)
		if state=PLAYERSTATE.FREE
		{
			state=PLAYERSTATE.LAVKA4;
			image_index=0;
			sprite_index=spr_Ytopurok_sit_lav_4;
		}
	}
}
with (obj_dim_player2){
	if in_place and start =0 and global.zaniatui = false 
	{
		start =1;
		if state=PLAYERSTATE.FREE 
		{
			state=PLAYERSTATE.LAVKA4;
			image_index=0;
			sprite_index=spr_Krus_sit_lav_4;
		}
	}
}*/

if (global.zaniatui = false)
{
	if (obj_dim_player1.in_place and obj_dim_player1.start=0 and obj_dim_player2.in_place and obj_dim_player2.start =0)
	{
		with (obj_dim_player1){
			start =1; //потрібно для нормального виходу з анімації (інакше йде зациклення бо ГГ завжди in_place)
			state=PLAYERSTATE.LAVKA4;
			image_index = 0;
			sprite_index=spr_Ytopurok_sit_lav_4;
		//	alarm[0]=room_speed*10;
			
		}
		with (obj_dim_player2){
			start =1;
			state=PLAYERSTATE.LAVKA4;
			image_index = 0;
			sprite_index=spr_Krus_sit_lav_4;
			//alarm[0]=room_speed*10;
		}
	}
}