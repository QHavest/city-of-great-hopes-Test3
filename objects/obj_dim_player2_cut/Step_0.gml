//якщо магазин відкритий, гравець нерухомий
if (global.shop) exit;

//система зміни статусу гравця

if(keyboard_check(ord("2"))) status = STATUS.PASSIVE;
if(keyboard_check(ord("1"))) status = STATUS.ACTIVE;


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