/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y+5, obj_dim_player1) || place_meeting(x, y+5, obj_dim_player2)){
	if (!shopOpen && keyboard_check_pressed(ord("E"))){
	shopOpen = true;
	global.shop = true;
	}
}
else if(shopOpen && keyboard_check_pressed(vk_space)){
		shopOpen = false;
		global.shop = false;
}
if(shopOpen){
	//To right
	if(keyboard_check_pressed(ord("D")) ||  keyboard_check_pressed(vk_right)){
		selected++;
		if (selected == itemCount) selected = 0; 
	}
	//To left
	if(keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left)){
		selected--;
		if (selected < 0) selected = itemCount - 1;
	}
}