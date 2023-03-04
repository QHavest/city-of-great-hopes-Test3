// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_passive_player(){
event_inherited();
if (!in_sequence){
run     =  keyboard_check(vk_space);
keyr     =  keyboard_check(ord("D")) && place_free(x + collisionSpeed,y);
keyl     =  keyboard_check(ord("A")) && place_free(x - collisionSpeed,y);
keyup    =  keyboard_check(ord("W")) && place_free(x,y - collisionSpeed);
keydown  =  keyboard_check(ord("S")) && place_free(x,y + collisionSpeed);
key_room_go = keyboard_check(ord("E"))
}

if(global.item_bought or global.dialogue_move or !global.dialog_end) exit;

if (playernum == 2) {
	//walk
	if (run == 0 and distance_to_object(obj_dim_player1) > 30 ) mp_linear_step_object(obj_dim_player1.posX[14], obj_dim_player1.posY[14], 5, false);
	//run
	if (run == 1) mp_linear_step_object(obj_dim_player1.posX[14], obj_dim_player1.posY[14], 10, false);
	}
else if(playernum == 1){
	//walk
	if (run == 0 and distance_to_object(obj_dim_player2) > 30) mp_linear_step_object(obj_dim_player2.posX[14], obj_dim_player2.posY[14], 5, false);
	//run
	if (run == 1) mp_linear_step_object(obj_dim_player2.posX[14], obj_dim_player2.posY[14], 10, false);

}

}