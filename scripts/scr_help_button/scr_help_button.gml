// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_help_button(){
if(obj_dim_player1.status = STATUS.ACTIVE and place_meeting(x, y, obj_dim_player1)){
	if (drowings = true)
	{	
		draw_sprite_ext(help_sprite, img,  obj_dim_player1.x - 6, obj_dim_player1.y - 80, 0.5, 0.5, 0, -1, 1)
	}
}
if(obj_dim_player2.status = STATUS.ACTIVE and place_meeting(x, y, obj_dim_player2)){
	if (drowings = true)
	{	
		draw_sprite_ext(help_sprite, img,  obj_dim_player2.x - 6, obj_dim_player2.y - 80, 0.5, 0.5, 0, -1, 1)
	}
}
}