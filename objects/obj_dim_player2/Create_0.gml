mask_index = sprite_index;
walkspd = 4;
runspd  = 15;
collisionSpeed = 4;
lastmove = 0
//налаштування перемикання між персонажами 
playernum = 2;
status = STATUS.PASSIVE

/*sound = snd_rivalstation;
audio_play_sound(sound,1,1);*/

state=PLAYERSTATE.FREE;
hitByAttack = ds_list_create();


//Частина 1 системи слідкування за героєм
array_size = 15;
for(var i = array_size-1; i >= 0; i--){
	posX[i] = x;
	posY[i] = y;
}