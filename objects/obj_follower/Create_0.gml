mask_index = sprite_index;
playernum = 1;
walkspd = 4;
runspd  = 15;
collisionSpeed = 4;
state=FOLLOWERSTATE.FREE;

enum FOLLOWERSTATE
{
FREE,
ATTACK1,
ATTACK2,
ATTACK3,
BLOCK,
}