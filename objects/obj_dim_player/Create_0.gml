/// @description Insert description here
// You can write your code in this editor
walkspd = 4;
runspd  = 15;
lastmove = 0;
playernum = 0;
collisionSpeed = 4;
/*sound = snd_rivalstation;
audio_play_sound(sound,1,1);*/
mask_index = sprite_index;

state=PLAYERSTATE.FREE;
hitByAttack = ds_list_create();
enum PLAYERSTATE
{
FREE,
ATTACK1,
ATTACK2,
ATTACK3,
BLOCK,
}

//Частини системи слідкування за героєм
array_size = 15;

for(var i = array_size-1; i >= 0; i--){
	posX[i] = x;
	posY[i] = y;
}