/// @description Insert description here
// You can write your code in this editor
//запуск анімацію коли ГГ приходить у щадану координату
if pl=1
with (obj_dim_player1){
	//новий глобал для відмежування діалогу (dialog end трохи не там змінюється)
if in_place and start =0 and global.zaniatui = false
{	
	start =1; //потрібно для нормального виходу з анімації (інакше йде зациклення бо ГГ завжди in_place)
	if state!=PLAYERSTATE.VODA state=PLAYERSTATE.VODA;
	image_index=0;
	sprite_index=spr_dim_Ytopurok_voda;
	obj_water.visible=false;
	obj_dim_player2.in_place=0;
}
}
if pl=2
with (obj_dim_player2){
if in_place and start =0 and global.zaniatui = false 
{
	// покупка води
	
	start =1;
	image_index=0;
	if state!=PLAYERSTATE.VODA state=PLAYERSTATE.VODA;
	sprite_index=spr_dim_Krus_voda;
	obj_dim_player1.in_place=0;
}
}

