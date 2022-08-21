/// @description Insert description here
// You can write your code in this editor

move     =  keyboard_check(vk_space);
keyr     =  keyboard_check(ord("D"));
keyl     =  keyboard_check(ord("A"));
keyup    =  keyboard_check(ord("W"));
keydown  =  keyboard_check(ord("S"));
keyattack=  keyboard_check_pressed(ord("F"));
if (keyboard_check(ord("1"))) playernum = 0;
if (keyboard_check(ord("2"))) playernum = 1;
key_room_go = keyboard_check(ord("E"))


 switch(state){
 case	PLAYERSTATE.FREE	  : scr_dim_plyerstate_free();     break;
 case	PLAYERSTATE.ATTACK1   : scr_dim_playerstate_meelat();  break;
 case	PLAYERSTATE.ATTACK2   : scr_dim_playerstate_rangeat(); break;
 case	PLAYERSTATE.BLOCK     : scr_dim_playerstate_block();   break;
 } 
//depth = -x;
depth = -y;

// sound
scr_play_fon_music(room);