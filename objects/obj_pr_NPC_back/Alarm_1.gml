/// @description Insert description here
// You can write your code in this editor
hsp=0;
vsp=0;

direct = choose(1,2,3,4) 
switch (direct){
	
case 1 : hsp=spd; break;
case 2 : hsp=-spd;break;
case 3 : break; // stay
case 4 : if place_meeting(x,y,zone_interest) lastmove =-1;// шоб не стояли лишній рз коли не в зоні
else if choose(0,1) hsp=spd; else hsp=-spd;
break;
}
if(place_meeting(x + hsp, y, obj_invisiblewall))
{
	hsp=-hsp;
}
alarm[1]=random_range(min_t,max_t)*room_speed;