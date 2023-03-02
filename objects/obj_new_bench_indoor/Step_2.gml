/// @description Insert description here
// You can write your code in this editor
with (obj_dim_player1){
if in_place and start =0 and global.zaniatui = false
{
	start =1;
//	image_index=0;
if state!=PLAYERSTATE.LAVKA2 state=PLAYERSTATE.LAVKA2;
	sprite_index=spr_Ytopurok_sit_lav_4;
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
	sprite_index=spr_Krus_sit_lav_4;
}
}