/// @description Insert description here
// You can write your code in this editor
//запуск анімацію коли ГГ приходить у щадану координату
with (obj_dim_player1){
	//новий глобал для відмежування діалогу (dialog end трохи не там змінюється)
if in_place and start =0 and global.zaniatui = false
{
	start =1; //потрібно для нормального виходу з анімації (інакше йде зациклення бо ГГ завжди in_place)
//	image_index=0;
if state!=PLAYERSTATE.LAVKA2 state=PLAYERSTATE.LAVKA2;
	sprite_index=spr_Ytopurok_sit_lav_2;
}
}
with (obj_dim_player2){
if in_place and start =0 and global.zaniatui = false 
{
start =1;
//	image_index=0;
	if state!=PLAYERSTATE.LAVKA2 state=PLAYERSTATE.LAVKA2;
	//global.dialogue_move=false;
	//in_place=0;
	sprite_index=spr_Krus_sit_lav_2;
}
}