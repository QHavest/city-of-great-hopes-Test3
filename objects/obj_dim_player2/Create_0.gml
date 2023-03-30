mask_index = sprite_index;
move = 1; // Mazur
walkspd = 2;
runspd  = 3.5;
collisionSpeed = 4;
lastmove = 0
//налаштування перемикання між персонажами 
playernum = 2;
status = STATUS.PASSIVE;
s_walk = snd_walk;
InRoomMode = false;
krok=0;

sprit = "Krus";
in_place = 0;
last_active = 0;

seller_spr_default = noone;
seller_spr=noone;
seller_obj=noone;
buing_spr = spr_buy_Krus_tiket_2_R;

start =0;

xsd = 0;
ysd = 0;


/*sound = snd_rivalstation;
audio_play_sound(sound,1,1);*/

state=PLAYERSTATE.FREE;
//hitByAttack = ds_list_create();


//Частина 1 системи слідкування за героєм
array_size = 20;
for(var i = array_size-1; i >= 0; i--){
	posX[i] = x;
	posY[i] = y;
}


// Mazur

//audio_listener_set_position(0,x,y,0);
//audio_listener_set_orientation(0,0,1,0,0,0,1)