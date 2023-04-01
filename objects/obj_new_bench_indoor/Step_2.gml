/// @desc
//запуск анімацію коли ГГ приходить у задану координату
with (obj_dim_player1)
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
}