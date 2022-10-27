mask_index = sprite_index;
walkspds = 4;
runspds  = 15;
collisionSpeed = 4;
lastmoves = 0

moves     =  keyboard_check(vk_space);
keyrs     =  keyboard_check(ord("D")) && place_free(x + collisionSpeed,y);
keyls    =  keyboard_check(ord("A")) && place_free(x - collisionSpeed,y);
keyups   =  keyboard_check(ord("W")) && place_free(x,y - collisionSpeed);
keydowns  =  keyboard_check(ord("S")) && place_free(x,y + collisionSpeed);
key_room_go = keyboard_check(ord("E"));
//налаштування перемикання між персонажами 
playernum = 1;
status = STATUS.ACTIVE

/*sound = snd_rivalstation;
audio_play_sound(sound,1,1);*/

states=PLAYERSTATES.FREES;
hitByAttack = ds_list_create();
enum PLAYERSTATES{
FREES,
STAY
}

//Частина 1 системи слідкування за героєм
array_size = 15;
for(var i = array_size-1; i >= 0; i--){
	posX[i] = x;
	posY[i] = y;
}