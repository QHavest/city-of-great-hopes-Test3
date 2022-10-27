mask_index = sprite_index;
depth = -bbox_bottom;
walkspds = 4;
runspds  = 15;
collisionSpeed = 4;
lastmoves = 0


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