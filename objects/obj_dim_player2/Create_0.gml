mask_index = sprite_index;
move = 1; // Mazur
walkspd = 4;
runspd  = 15;
collisionSpeed = 4;
lastmove = 0
//налаштування перемикання між персонажами 
playernum = 2;
status = STATUS.PASSIVE;
s_walk = snd_walk;

sprit = "Krus";

xsd = 0;
ysd = 0;


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


// Mazur

//audio_listener_set_position(0,x,y,0);
//audio_listener_set_orientation(0,0,1,0,0,0,1)