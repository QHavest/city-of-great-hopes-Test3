function scr_play_player(){
event_inherited();
if (!in_sequence){
run     =  keyboard_check(vk_space);
keyr     =  keyboard_check(ord("D")) && place_free(x + collisionSpeed,y);
keyl     =  keyboard_check(ord("A")) && place_free(x - collisionSpeed,y);
keyup    =  keyboard_check(ord("W")) && place_free(x,y - collisionSpeed);
keydown  =  keyboard_check(ord("S")) && place_free(x,y + collisionSpeed);
key_room_go = keyboard_check(ord("E"));
key_diary = keyboard_check(ord("N")) or keyboard_check(ord("T"));
//key_smoke =  keyboard_check(ord("Y"));
}

if (playernum = 1)
{
var cam = view_get_camera(0);
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);
view_set_visible(0, true);
view_set_visible(1, false);
camera_set_view_target(cam, obj_dim_player1);
} else 
	{
var cam = view_get_camera(1);
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);
view_set_visible(0, false);
view_set_visible(1, true);
camera_set_view_target(cam, obj_dim_player2);}
/*else{
cam = view_get_camera(1);
cw = camera_get_view_width(cam);
ch = camera_get_view_height(cam);
view_set_visible(0, false);
view_set_visible(1, true);
}*/
// smoking
//if key_smoke
//{
//	obj_dim_player1.state=PLAYERSTATE.SMOKE;
//	obj_dim_player2.state=PLAYERSTATE.SMOKE;
	
//}
// movement sound
scr_move_sound()


}