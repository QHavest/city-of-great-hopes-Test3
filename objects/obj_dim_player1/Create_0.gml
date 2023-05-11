scr_Znaiomstvo();
mask_index = sprite_index;
walkspd = 3;
runspd  = 5;
collisionSpeed = 4;
lastmove = 0;
s_ind=false;
s_walk = snd_walk;
InRoomMode = false;
krok=0;

ind=0;

xsd = 0;
ysd = 0;
// спрайти для покупок
seller_spr_default = noone;
seller_spr=noone;
seller_obj=noone;
buing_spr = spr_buy_Ytopur_tiket_2;


sprit = "Ytopurok";
// змінні для керування персонажами без гравця
in_place = 0;
last_active = 0;
start =0;
l=0;
quit=false;
posudiv = false;
activity_pause=room_speed*10;
activity = activity_pause;


//налаштування перемикання між персонажами 
playernum = 1;
status = STATUS.ACTIVE
enum STATUS{
ACTIVE,
PASSIVE,
NONE,
}

state=PLAYERSTATE.FREE;
enum PLAYERSTATE{
FREE,
BUY,
VODA, 
DIALOGUE,
LAVKA1,
LAVKA2,
LAVKA3,
LAVKA4,
ACLAVKA,
SMOKE
}

//Частина 1 системи слідкування за героєм
array_size = 20; 
for(var i = array_size-1; i >= 0; i--){
	posX[i] = x; 
	posY[i] = y;
}

// МУзонЧІК
audio_listener_set_position(0,x,y,0);
audio_listener_set_orientation(0,0,1,0,0,0,1);
