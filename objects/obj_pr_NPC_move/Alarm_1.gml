/// @description Insert description here
// You can write your code in this editor
hsp=0;
vsp=0;
direct = choose(1,2,3) 
switch (direct){
case 1 : hsp=spd; break;
case 2 : hsp=-spd;break;
case 3 :  break; // stay
}
if(place_meeting(x + hsp, y, obj_invisiblewall))
{
	hsp=-hsp;
}
alarm[1]=random_range(min_t,max_t)*room_speed;