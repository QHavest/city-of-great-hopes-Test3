/// @description Insert description here
// You can write your code in this editor
event_inherited();
move     =  keyboard_check(vk_space);
keyr     =  keyboard_check(ord("D")) && place_free(x + collisionSpeed,y);
keyl     =  keyboard_check(ord("A")) && place_free(x - collisionSpeed,y);
keyup    =  keyboard_check(ord("W")) && place_free(x,y - collisionSpeed);
keydown  =  keyboard_check(ord("S")) && place_free(x,y + collisionSpeed);
keyattack=  keyboard_check_pressed(ord("F"));
if (keyboard_check(ord("1"))) playernum = 0;
if (keyboard_check(ord("2"))) playernum = 1;
key_room_go = keyboard_check(ord("E"))

/*inputDirection = point_direction(0,0,keyr-keyl,keydown-keyup);
inputMagnitude = (keyr - keyl != 0) || (keydown - keyup != 0);

hSpeed = lengthdir_x(inputMagnitude * walkspd, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * walkspd, inputDirection);
x+=hSpeed;
y+=vSpeed;*/
 switch(state){
 case	PLAYERSTATE.FREE	  : scr_dim_plyerstate_free();     break;
 case	PLAYERSTATE.ATTACK1   : scr_dim_playerstate_meelat();  break;
 case	PLAYERSTATE.ATTACK2   : scr_dim_playerstate_rangeat(); break;
 case	PLAYERSTATE.BLOCK     : scr_dim_playerstate_block();   break;
 } 

// sound
//scr_play_fon_music(room);
