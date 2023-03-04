/// @description Insert description here
// You can write your code in this editor
hsp=0;
vsp=0;
if a=1{
direct = choose(1,2,3,4,5,6) 
switch (direct){
	
case 1 : hsp=spd; break;
case 2 : hsp=-spd;break;
case 3 : break; // stay
case 4 : lastmove =-1; break;
case 5 : hsp=spd; break;
case 6 : hsp=-spd;break;
}
alarm[1]=random_range(min_t,max_t)*room_speed;
a=0;
}