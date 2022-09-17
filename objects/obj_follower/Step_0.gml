depth = -bbox_bottom
//
event_inherited();
move     =  keyboard_check(vk_space);
keyr     =  keyboard_check(ord("D")) && place_free(x + collisionSpeed,y);
keyl     =  keyboard_check(ord("A")) && place_free(x - collisionSpeed,y);
keyup    =  keyboard_check(ord("W")) && place_free(x,y - collisionSpeed);
keydown  =  keyboard_check(ord("S")) && place_free(x,y + collisionSpeed);
if (keyboard_check(ord("1"))) playernum = 1;
if (keyboard_check(ord("2"))) playernum = 0;

//унаслідування координат гравця
x = obj_dim_player.posX[12]
y = obj_dim_player.posY[12]

//На майбутнє копіюю систему зміни стану 

 switch(state){
 case	FOLLOWERSTATE.FREE	  : scr_dim_followerstate_free();     break;
 //case	FOLLOWERSTATE.ATTACK1   : scr_dim_playerstate_meelat();  break;
 //case	FOLLOWERSTATE.ATTACK2   : scr_dim_playerstate_rangeat(); break;
 //case	FOLLOWERSTATE.BLOCK     : scr_dim_playerstate_block();   break;
 } 
