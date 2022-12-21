function scr_play_player(){
event_inherited();
if (!in_sequence){
move     =  keyboard_check(vk_space);
keyr     =  keyboard_check(ord("D")) && place_free(x + collisionSpeed,y);
keyl     =  keyboard_check(ord("A")) && place_free(x - collisionSpeed,y);
keyup    =  keyboard_check(ord("W")) && place_free(x,y - collisionSpeed);
keydown  =  keyboard_check(ord("S")) && place_free(x,y + collisionSpeed);
key_room_go = keyboard_check(ord("E"));
key_diary = keyboard_check(ord("N")) or keyboard_check(ord("T"));
}

if (playernum = 1)
{
var cam = view_get_camera(0);
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);
view_set_visible(0, true);
view_set_visible(1, false);
}
else{
cam = view_get_camera(1);
cw = camera_get_view_width(cam);
ch = camera_get_view_height(cam);
view_set_visible(0, false);
view_set_visible(1, true);
}

if(keyr or keyl or keyup or keydown){
	if(move = true)
	{
		if !audio_is_playing(snd_run) audio_play_sound(snd_run,global.player_gain,0);
		if audio_is_playing(s_walk) audio_stop_sound(s_walk);
	}
	else 
	{
	if !audio_is_playing(s_walk) audio_play_sound(s_walk,global.player_gain,0);
	if audio_is_playing(snd_run) audio_stop_sound(snd_run);
	}
	
	
	show_debug_message("mooving")
}

if(!keyr and !keyl and !keyup and !keydown){
// стап звуків коли стоїш 
if (audio_is_playing(s_walk)) audio_stop_sound(s_walk);
if (audio_is_playing(snd_run)) audio_stop_sound(snd_run);
}
//переміщення слухача
if y!=yprevious or x!=xprevious audio_listener_set_position(0,x,y,0);

}