//система зміни статусу гравця

if(keyboard_check(ord("1"))) status = STATUS.PASSIVE;
if(keyboard_check(ord("2"))) status = STATUS.ACTIVE;

switch(status){
	case STATUS.ACTIVE : scr_play_player()   ; break;
	case STATUS.PASSIVE: scr_passive_player(); break;
}


/*inputDirection = point_direction(0,0,keyr-keyl,keydown-keyup);
inputMagnitude = (keyr - keyl != 0) || (keydown - keyup != 0);

hSpeed = lengthdir_x(inputMagnitude * walkspd, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * walkspd, inputDirection);
x+=hSpeed;
y+=vSpeed;*/
 switch(state){
case	PLAYERSTATE.FREE	 : scr_dim_playerstate_free_krus();    break;
 //case	FOLLOWERSTATE.ATTACK1   : scr_dim_playerstate_meelat();  break;
 //case	FOLLOWERSTATE.ATTACK2   : scr_dim_playerstate_rangeat(); break;
 //case	FOLLOWERSTATE.BLOCK     : scr_dim_playerstate_block();   break;
 } 

// sound
//scr_play_fon_music(room);

if (x!= xprevious or y!= yprevious){
	for(var i = array_size-1; i > 0; i--){
		posX[i] = posX[i-1];
		posY[i] = posY[i-1];
	}	
	posX[0] = x;
	posY[0] = y;
}