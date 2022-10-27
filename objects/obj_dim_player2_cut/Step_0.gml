//якщо магазин відкритий, гравець нерухомий
if (global.shop) exit;

//система зміни статусу гравця

if(keyboard_check(ord("2"))) status = STATUS.PASSIVE;
if(keyboard_check(ord("1"))) status = STATUS.ACTIVE;
moves     =  keyboard_check(vk_space);
keyrs     =  keyboard_check(ord("D")) && place_free(x + collisionSpeed,y);
keyls    =  keyboard_check(ord("A")) && place_free(x - collisionSpeed,y);
keyups   =  keyboard_check(ord("W")) && place_free(x,y - collisionSpeed);
keydowns  =  keyboard_check(ord("S")) && place_free(x,y + collisionSpeed);
key_room_go = keyboard_check(ord("E"));

//move     =  keyboard_check(vk_space);


/*switch(status){
	case STATUS.ACTIVE : scr_play_player()   ; break;
	case STATUS.PASSIVE: scr_passive_player(); break;
}*/

 switch(states){
case	PLAYERSTATES.FREES	: scr_dim_playerstate_free_krus_pillow();    break;
 } 


if (x!= xprevious or y!= yprevious){
	for(var i = array_size-1; i > 0; i--){
		posX[i] = posX[i-1];
		posY[i] = posY[i-1];
	}	
	posX[0] = x;
	posY[0] = y;
}