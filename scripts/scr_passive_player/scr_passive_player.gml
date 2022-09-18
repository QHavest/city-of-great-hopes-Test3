// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_passive_player(){
event_inherited();
move     =  keyboard_check(vk_space);
keyr     =  keyboard_check(ord("D"))
keyl     =  keyboard_check(ord("A")) 
keyup    =  keyboard_check(ord("W")) 
keydown  =  keyboard_check(ord("S")) 
keyattack=  keyboard_check_pressed(ord("F"));
key_room_go = keyboard_check(ord("E"))


//унаслідування координат гравця

if (playernum = 2){
	x = obj_dim_player1.posX[10];
	y = obj_dim_player1.posY[10];
}
else {
	x = obj_dim_player2.posX[10];
	y = obj_dim_player2.posY[10];
}
}