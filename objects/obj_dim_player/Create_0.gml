/// @description Insert description here
// You can write your code in this editor
walkspd = 10;
runspd  = 0;
lastmove = 0;
playernum = 0;

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