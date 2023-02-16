scr_Znaiomstvo();
mask_index = sprite_index;
walkspd = 4;
runspd  = 6;
collisionSpeed = 4;
lastmove = 0;
s_walk = snd_walk;

xsd = 0;
ysd = 0;

sprit = "ytopurok";
in_place = 0;
last_active = 0;



//налаштування перемикання між персонажами 
playernum = 1;
status = STATUS.ACTIVE
enum STATUS{
ACTIVE,
PASSIVE,
}

state=PLAYERSTATE.FREE;
enum PLAYERSTATE{
FREE,
BUY,
DIALOGUE
}

//Частина 1 системи слідкування за героєм
array_size = 15; 
for(var i = array_size-1; i >= 0; i--){
	posX[i] = x; 
	posY[i] = y;
}

// МУзонЧІК
audio_listener_set_position(0,x,y,0);
audio_listener_set_orientation(0,0,1,0,0,0,1);
