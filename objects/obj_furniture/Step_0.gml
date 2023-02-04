/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y+5, obj_dim_player1) || place_meeting(x, y+5, obj_dim_player2)){
	if (!shopOpen && keyboard_check_pressed(ord("E"))){
	shopOpen = true;
	global.shop = true;
	}
}

if(shopOpen and global.shop){

	//To right
	if(keyboard_check_pressed(ord("D")) ||  keyboard_check_pressed(vk_right)){
		audio_play_sound(snd_search,5,0,global.System_gain)
		selected++;
		notselected++;
		if (selected == itemCount) selected = 0;
		if (notselected == itemCount01) notselected = 0; 
		
	}
	//To left
	if(keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left)){
		audio_play_sound(snd_search,5,0,global.System_gain)
		selected--;
		notselected--;
		if (selected < 0) selected = itemCount - 1;
		if (notselected < 0) notselected = itemCount01 - 1;
	}
}

//To buy
var arr = items_furniture[| selected];
var item = arr[0]; var price = arr[1];

if ((keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E"))) and shopOpen = true){
	if(global.money >= price){
				global.money -= price;
				audio_play_sound(snd_op_accept,5,0,global.System_gain)
				audio_play_sound(snd_sound_buy,5,0,global.System_gain)
		}
	}else{
		audio_play_sound(snd_not_enough_money,5,0,global.System_gain);
	}

if(shopOpen && keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("Q"))){
		shopOpen = false;
		global.shop = false;
		ds_list_destroy(items_furniture);
		ds_list_destroy(items_furniture01);
		instance_destroy(obj_furniture);
}