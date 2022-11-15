global.dialog_end = 1;
scr_Znaiomstvo();
mask_index = sprite_index;
walkspd = 4;
runspd  = 6;
collisionSpeed = 4;
lastmove = 0;
sprit = "Ytopurok"

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
STAY
}

//Частина 1 системи слідкування за героєм
array_size = 15; 
for(var i = array_size-1; i >= 0; i--){
	posX[i] = x; 
	posY[i] = y;
}

