/// @description Insert description here
// You can write your code in this editor
//запуск анімацію коли ГГ приходить у задану координату
if (obj_dim_player1.in_place and obj_dim_player1.start=0 and obj_dim_player2.in_place and obj_dim_player2.start =0 and global.zaniatui = false)
if(place_meeting(x, y+zone_y, obj_dim_player1) or place_meeting(x, y+zone_y, obj_dim_player2))
{
	with (obj_dim_player1){
		//новий глобал для відмежування діалогу (dialog end трохи не там змінюється)
		if (in_place and start =0 and global.zaniatui = false){
				start =1; //потрібно для нормального виходу з анімації (інакше йде зациклення бо ГГ завжди in_place)
				//	image_index=0;
			if (state != PLAYERSTATE.LAVKA1){
				state = PLAYERSTATE.LAVKA1
				image_index=0;
				sprite_index=spr_Ytopurok_sit_lav_1;
				alarm[0]=room_speed*10;
				}
		}
}
	with (obj_dim_player2){
		if (in_place and start =0 and global.zaniatui = false ) {
			start =1;
			if (state!=PLAYERSTATE.LAVKA1) {
				state=PLAYERSTATE.LAVKA1
				image_index=0;
				sprite_index=spr_Krus_sit_lav_1;
				alarm[0]=room_speed*10;
			}
		}
	}
}
