if obj_dim_player1.status= STATUS.ACTIVE and place_meeting(x, y, obj_dim_player1) and  drowings = true  and old_side = false{
draw_sprite_ext(spr_butt_E, 1,  obj_dim_player1.x + help_x, obj_dim_player1.y + help_y, 0.5, 0.5, 0, -1, 1)
}
if obj_dim_player2.status= STATUS.ACTIVE and place_meeting(x, y, obj_dim_player2) and  drowings = true  and old_side = false{
draw_sprite_ext(spr_butt_E, 1,  obj_dim_player2.x + help_x, obj_dim_player2.y + help_y, 0.5, 0.5, 0, -1, 1)
}
/*if drowing = true and room =  target_rm and old_side = true{
draw_sprite_ext(new_help_sprite, -1, obj_dim_player1.x - help_x, obj_dim_player1.y - help_y, 0.5, 0.5, 0, -1, 1)
}*/
/*if drowing = true and room = oldroom and new_side = false{
draw_sprite_ext(old_help_sprite, -1, obj_dim_player1.x + help_x, obj_dim_player1.y + help_y, 0.5, 0.5, 0, -1, 1)
}
if drowing = true and room = oldroom and new_side = true{
draw_sprite_ext(old_help_sprite, -1, obj_dim_player1.x - help_x, obj_dim_player1.y - help_y, 0.5, 0.5, 0, -1, 1)
}*/
//drowing = false
//draw_sprite_ext(new_help_sprite, -1, obj_dim_player1.x + help_x, obj_dim_player1.y + help_y, 0.5, 0.5, 0, -1, 1)
drowings = false;
with(inst_4A79BB31){
	if (distance_to_object(obj_dim_player2) > 10)
{
   draw_sprite_ext(spr_door_prozore,0,620,179,1,1,0,c_white,0.09)
} else if (distance_to_object(obj_dim_player2) < 10) {draw_sprite_ext(spr_door_prozore,0,620,179,1,1,0,c_white,0.2)}
}