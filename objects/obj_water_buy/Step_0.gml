if  (place_meeting(x, y, obj_dim_player1) or place_meeting(x, y, obj_dim_player2)) and keyboard_check_pressed(ord("E")){
//випив воду
global.money -= 0.1;
audio_play_sound(snd_coins_buy,5,0,global.System_gain);
}


if  (place_meeting(x, y, obj_dim_player1) or place_meeting(x, y, obj_dim_player2)){
//підсказка
drowings = true;
}
