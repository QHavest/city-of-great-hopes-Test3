/// @description Insert description here
// You can write your code in this editor
if(obj_dim_player1.status = STATUS.ACTIVE and place_meeting(x, y, obj_dim_player1)){
		draw_sprite_ext(help_sprite, img,  obj_dim_player1.x - 6, obj_dim_player1.y - 80, 0.5, 0.5, 0, -1, 1)
}
if(obj_dim_player2.status = STATUS.ACTIVE and place_meeting(x, y, obj_dim_player2)){

		draw_sprite_ext(help_sprite, img,  obj_dim_player2.x - 6, obj_dim_player2.y - 80, 0.5, 0.5, 0, -1, 1)
}
